import 'package:babymeal/models/feeding_log/feeding_log_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TempFeedingLogWidget extends StatelessWidget {
  const TempFeedingLogWidget({Key? key, this.tempFeedingLog = const []})
      : super(key: key);
  final List<FeedingLogItem> tempFeedingLog;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...tempFeedingLog.map(
        (feedItem) => TempFeedingLogItemWidget(
          feedItem: feedItem,
        ),
      )
    ]);
  }
}

class TempFeedingLogItemWidget extends StatelessWidget {
  const TempFeedingLogItemWidget({Key? key, required this.feedItem})
      : super(key: key);

  final FeedingLogItem feedItem;

  String _parseBrestSide(BreastSide side) {
    if (side == BreastSide.left) {
      return 'L';
    }
    return 'R';
  }

  String _parseFeedingTime(String duration) {
    final str = duration.split(':');
    return '${str[1]}:${str[2].split('.')[0]}';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: Text(_parseBrestSide(feedItem.breastSide),
                    style: Theme.of(context).textTheme.headlineLarge),
              ),
              Text(
                _parseFeedingTime(feedItem.duration),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.cancel),
              )
            ]),
      ),
    ).animate(effects: [
      FadeEffect(
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 300),
      ),
      SlideEffect(
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 300),
      )
    ]);
  }
}
