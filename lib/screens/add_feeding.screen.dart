import 'package:babymeal/dependencies_config.dart';
import 'package:babymeal/models/feeding_log/feeding.dart';
import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:babymeal/services/db.service.dart';
import 'package:babymeal/widgets/feeding/temp_feeding_log.widget.dart';
import 'package:babymeal/widgets/timer/timer.widget.dart';
import 'package:flutter/material.dart';

class AddFeedingScreen extends StatefulWidget {
  const AddFeedingScreen({Key? key}) : super(key: key);

  @override
  _AddFeedingScreenState createState() => _AddFeedingScreenState();
}

class _AddFeedingScreenState extends State<AddFeedingScreen> {
  final double _pillWidth = 120;
  final double _pillHeight = 60;
  bool _isTimerRunning = false;
  Duration _totalTime = Duration.zero;
  final ValueNotifier<BreastSide> _side =
      ValueNotifier<BreastSide>(BreastSide.none);

  double _dx = 60;
  final List<FeedingLogItem> _tempFeedingLog = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _dx = (MediaQuery.of(context).size.width - _pillWidth) / 2;
      });
    });
    super.initState();
  }

  void _addItem(Duration totalTime, Duration sideTime, BreastSide side) {
    var feedItem = FeedingLogItem(
      duration: sideTime.toString(),
      breastSide: side,
    );
    setState(() {
      _tempFeedingLog.add(feedItem);
      _totalTime = totalTime;
    });
  }

  Future _save() async {
    Feeding log = Feeding(
      date: DateTime.now().toString(),
      totalTime: '00:00:00',
      type: FeedingType.brest,
    )..items.addAll(_tempFeedingLog);

    return await getIt<DbService>().addFeedLog(log);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add feeding'),
      ),
      bottomSheet: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const SizedBox(
                  width: 120, child: Center(child: Text('Cancel'))),
            ),
            OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink.shade100,
              ),
              onPressed: () async {
                await _save();
                Navigator.pop(context);
              },
              child: const SizedBox(
                width: 120,
                child: Center(
                  child: Text('Save'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: TimerWidget(
                    isRunning: _isTimerRunning,
                    addItem: _addItem,
                    side: _side,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      left: _dx,
                      child: GestureDetector(
                        onHorizontalDragEnd: (details) {
                          if (_dx > 120 && !_isTimerRunning) {
                            setState(() {
                              _dx = MediaQuery.of(context).size.width -
                                  _pillWidth;
                              if (!_isTimerRunning) _isTimerRunning = true;
                            });
                            _side.value = BreastSide.right;
                            return;
                          }
                          if (_dx < 40 && !_isTimerRunning) {
                            setState(() {
                              if (!_isTimerRunning) _isTimerRunning = true;
                              _dx = 0;
                            });
                            _side.value = BreastSide.left;
                            return;
                          }

                          _side.value = BreastSide.none;

                          setState(() {
                            _dx = (MediaQuery.of(context).size.width -
                                    _pillWidth) /
                                2;
                            if (_isTimerRunning) _isTimerRunning = false;
                          });
                        },
                        onHorizontalDragUpdate: (DragUpdateDetails dragData) {
                          var nextPosition = _dx += dragData.delta.dx;
                          setState(() {
                            _dx = nextPosition.clamp(0,
                                MediaQuery.of(context).size.width - _pillWidth);
                          });
                        },
                        child: Container(
                          height: _pillHeight,
                          width: _pillWidth,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child:
                        TempFeedingLogWidget(tempFeedingLog: _tempFeedingLog),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
