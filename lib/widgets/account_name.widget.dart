import 'package:flutter/material.dart';

class AccountNameWidget extends StatelessWidget {
  const AccountNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
            onPressed: () {},
            child: const Text('Next'),
          )
        ],
      ),
    );
  }
}
