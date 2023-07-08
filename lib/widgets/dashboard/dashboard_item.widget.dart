import 'package:flutter/material.dart';

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
          child: SizedBox(
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
