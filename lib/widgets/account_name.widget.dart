import 'package:babymeal/models/user.dart';
import 'package:flutter/material.dart';

class AccountNameWidget extends StatefulWidget {
  const AccountNameWidget({Key? key, required this.animateTo})
      : super(key: key);
  final Function animateTo;

  @override
  State<AccountNameWidget> createState() => _AccountNameWidgetState();
}

class _AccountNameWidgetState extends State<AccountNameWidget> {
  final TextEditingController _nameController = TextEditingController();

  _saveAccount() {
    var user = User(name: _nameController.text);
  }

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
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Proud parent 😎',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _saveAccount();
                widget.animateTo(2);
              },
              child: const Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
