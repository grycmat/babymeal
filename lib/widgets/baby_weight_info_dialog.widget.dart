import 'package:flutter/material.dart';

class BabyWeightInfoDialogWidget extends StatefulWidget {
  const BabyWeightInfoDialogWidget({Key? key, required this.updateFn})
      : super(key: key);
  final Function updateFn;

  @override
  State<BabyWeightInfoDialogWidget> createState() =>
      _BabyWeightInfoDialogWidgetState();
}

class _BabyWeightInfoDialogWidgetState
    extends State<BabyWeightInfoDialogWidget> {
  late final TextEditingController _weightController;
  late final TextEditingController _birthWeightController;

  @override
  void initState() {
    _weightController = TextEditingController();
    _birthWeightController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: _weightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Current weight',
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _birthWeightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Birth weight',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var generalData = {
                    'weight': _weightController.text,
                    'birth_weight': _birthWeightController.text
                  };
                  widget.updateFn(generalData);
                  Navigator.pop(context);
                },
                child: const Text('Done'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
