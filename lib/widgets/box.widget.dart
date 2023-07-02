import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget(
      {Key? key,
      required this.title,
      this.subtitle = '',
      this.isFilled = false})
      : super(key: key);
  final String title, subtitle;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isFilled ? Colors.pink.shade100 : Colors.grey.shade100,
        ),
        width: screenWidth * 0.4,
        height: screenWidth * 0.4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}
