import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:flutter/material.dart';

import 'dart:async';

class TimerWidget extends StatefulWidget {
  const TimerWidget(
      {Key? key,
      this.isRunning = false,
      required this.addItem,
      required this.side})
      : super(key: key);
  final bool isRunning;
  final Function(Duration, Duration, BreastSide) addItem;
  final ValueNotifier<BreastSide> side;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  BreastSide? _currentSide;
  Timer? _timer;
  Duration _totalTime = Duration.zero;
  Duration _sideTime = Duration.zero;
  bool _timerRunning = false;

  @override
  void initState() {
    widget.side.addListener(() {
      if (widget.side.value != BreastSide.none) {
        _timer?.cancel();
        setState(() {
          _timerRunning = true;
        });
        _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
          setState(() {
            _currentSide = widget.side.value;
            _sideTime = _sideTime + const Duration(seconds: 1);
            _totalTime = _totalTime + const Duration(seconds: 1);
          });
        });
      } else {
        _timer?.cancel();
        widget.addItem(_totalTime, _sideTime, _currentSide!);
        setState(() {
          _sideTime = Duration.zero;
          _timerRunning = false;
        });
      }
    });
    super.initState();
  }

  @override
  dispose() {
    _timer?.cancel();
    super.dispose();
  }

  _timeString(Duration duration) {
    final str = duration.toString().split(':');
    return '${str[1]}:${str[2].split('.')[0]}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: AnimatedPadding(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(_timerRunning ? 42 : 36),
        child: Text(
          _timeString(_totalTime),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
