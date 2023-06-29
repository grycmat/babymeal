import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '👼',
              style: TextStyle(fontSize: 80),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'BabyTracker Beacon',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Color(0xFF737373),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome to BTB! Track your baby's feeding and growth with ease!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Readex Pro',
                color: Color(0xFF737373),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  minimumSize: Size(double.infinity, 60)),
              onPressed: () {
                Navigator.pushNamed(context, '/first_run');
              },
              child: const Text('Start'),
            ),
          ),
        ],
      ),
    );
  }
}
