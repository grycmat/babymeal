import 'package:babymeal/models/feeding_log/temp_feeding_log_item.model.dart';
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
  final Function(Duration, BreastSide) addItem;
  final ValueNotifier<BreastSide> side;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  void initState() {
    widget.side.addListener(() {
      if (widget.side.value != BreastSide.none) {
        _timer?.cancel();
        _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
          setState(() {
            _timeElapsed = _timeElapsed + const Duration(seconds: 1);
          });
        });
      } else {
        _timer?.cancel();
        widget.addItem(_timeElapsed, widget.side.value);
      }
    });
    super.initState();
  }

  Timer? _timer;
  Duration _timeElapsed = Duration.zero;

  _timeString(Duration duration) {
    final str = duration.toString().split(':');
    return '${str[1]}:${str[2].split('.')[0]}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _timeString(_timeElapsed),
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
