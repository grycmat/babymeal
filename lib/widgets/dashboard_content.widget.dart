import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class DashboardContentWidget extends StatelessWidget {
  const DashboardContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DashboardItem(
                flex: 3,
                title: '4',
                subtitle: 'Feeding logs',
              ),
              DashboardItem(
                flex: 2,
                title: '2',
                subtitle: 'Schedule',
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DashboardItem(
                flex: 2,
                title: '1',
                subtitle: 'Mood',
              ),
              DashboardItem(
                flex: 3,
                title: '12',
                subtitle: 'Growth',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  const DashboardItem(
      {Key? key,
      required this.flex,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String title, subtitle;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 1,
          child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class LastEventWidget extends StatelessWidget {
  const LastEventWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Padding(padding: const EdgeInsets.all(12), child: Card()));
  }
}
