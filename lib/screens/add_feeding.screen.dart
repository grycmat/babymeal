import 'package:babymeal/models/feeding_log/temp_feeding_log_item.model.dart';
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
  final double _pillHeight = 80;
  bool _isTimerRunning = false;
  ValueNotifier time = ValueNotifier<String>('');
  final ValueNotifier<BreastSide> _side =
      ValueNotifier<BreastSide>(BreastSide.none);

  double _dx = 60;
  final List<TempFeedingLogModel> _tempFeedingLog = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _dx = (MediaQuery.of(context).size.width - _pillWidth) / 2;
      });
    });
    super.initState();
  }

  void _addItem(Duration time, BreastSide side) {
    print('add item');
    print(time.toString());
    var feedItem = TempFeedingLogModel(
      time: time,
      breastSide: _side.value,
    );
    _tempFeedingLog.add(feedItem);
  }

  void _save() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add feeding'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              TimerWidget(
                isRunning: _isTimerRunning,
                addItem: _addItem,
                side: _side,
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  Positioned(
                    left: _dx,
                    child: GestureDetector(
                      onHorizontalDragEnd: (details) {
                        if (_dx > 100 && !_isTimerRunning) {
                          setState(() {
                            _dx =
                                MediaQuery.of(context).size.width - _pillWidth;
                            if (!_isTimerRunning) _isTimerRunning = true;
                          });
                          _side.value = BreastSide.right;
                          return;
                        }
                        if (_dx < 60 && !_isTimerRunning) {
                          setState(() {
                            if (!_isTimerRunning) _isTimerRunning = true;
                            _dx = 0;
                          });
                          _side.value = BreastSide.left;
                          return;
                        }

                        _side.value = BreastSide.none;

                        setState(() {
                          _dx =
                              (MediaQuery.of(context).size.width - _pillWidth) /
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
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              TempFeedingLogWidget(tempFeedingLog: _tempFeedingLog),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const SizedBox(
                          width: 120, child: Center(child: Text('Cancel'))),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade100,
                      ),
                      onPressed: () {
                        _save();
                      },
                      child: const SizedBox(
                          width: 120, child: Center(child: Text('Save'))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
