import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key, required this.animateTo}) : super(key: key);

  final Function animateTo;

  Animate _animate({required Widget child, Duration delay = Duration.zero}) {
    return Animate(
      effects: const [
        FadeEffect(curve: Curves.easeOut),
        SlideEffect(curve: Curves.easeOut)
      ],
      delay: delay,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _animate(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '👼',
              style: TextStyle(fontSize: 80),
            ),
          ),
        ),
        _animate(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'BabyTracker Beacon',
              style: TextStyle(
                color: Color(0xFF737373),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        _animate(
          delay: const Duration(milliseconds: 300),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Welcome to BMB! Track your baby's feeding and growth with ease!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF737373),
                fontSize: 20,
              ),
            ),
          ),
        ),
        _animate(
          delay: const Duration(milliseconds: 400),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  minimumSize: const Size(double.infinity, 60)),
              onPressed: () {
                animateTo(1);
              },
              child: const Text('Start'),
            ),
          ),
        ),
      ],
    );
  }
}
