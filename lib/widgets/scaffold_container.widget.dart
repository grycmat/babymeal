import 'package:flutter/material.dart';

class ScaffoldContainerWidget extends StatelessWidget {
  const ScaffoldContainerWidget({Key? key, required this.content})
      : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 228, 182, 45),
            Color.fromARGB(255, 202, 57, 105),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: content,
    );
  }
}
