import 'package:flutter/material.dart';

class AccountNameWidget extends StatelessWidget {
  const AccountNameWidget({Key? key, required this.animateTo}) : super(key: key);
  final Function animateTo;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 500,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'How should I call you?',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Proud parent 😎',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                animateTo(2);
              },
              child: const Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
