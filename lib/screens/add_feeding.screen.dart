import 'dart:async';

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
  double _dx = 60;
  List tempFeedingLog = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _dx = (MediaQuery.of(context).size.width - _pillWidth) / 2;
      });
    });
    super.initState();
  }

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
              TimerWidget(isRunning: _isTimerRunning),
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
                            _isTimerRunning = true;
                          });
                          return;
                        }
                        if (_dx < 60 && !_isTimerRunning) {
                          setState(() {
                            _isTimerRunning = true;
                            _dx = 0;
                          });
                          return;
                        }

                        setState(() {
                          _dx =
                              (MediaQuery.of(context).size.width - _pillWidth) /
                                  2;
                          _isTimerRunning = false;
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
              TempFeedingLogWidget(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                          width: 120, child: Center(child: Text('Cancel'))),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade100,
                      ),
                      onPressed: () {},
                      child: Container(
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

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key, this.isRunning = false}) : super(key: key);
  final bool isRunning;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? _timer;
  int _timeElapsed = 0;

  @override
  void didUpdateWidget(covariant TimerWidget oldWidget) {
    if (widget.isRunning && !oldWidget.isRunning) {
      _timer?.cancel();
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        setState(() {
          _timeElapsed++;
        });
      });
    } else {
      _timer?.cancel();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      _timeElapsed.toString(),
      style: Theme.of(context).textTheme.headlineLarge,
    ));
  }
}

class TempFeedingLogWidget extends StatelessWidget {
  const TempFeedingLogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
