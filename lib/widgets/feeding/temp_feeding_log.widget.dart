import 'package:babymeal/models/feeding_log/temp_feeding_log_item.model.dart';
import 'package:flutter/material.dart';

class TempFeedingLogWidget extends StatelessWidget {
  const TempFeedingLogWidget({Key? key, this.tempFeedingLog = const []})
      : super(key: key);
  final List<TempFeedingLogModel> tempFeedingLog;

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

  final TempFeedingLogModel feedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Text(feedItem.time.toString()),
          Text(feedItem.breastSide.toString()),
        ]),
      ),
    );
  }
}
