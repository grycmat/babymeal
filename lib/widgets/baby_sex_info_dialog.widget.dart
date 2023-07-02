import 'package:flutter/material.dart';

class BabySexInfoDialogWidget extends StatefulWidget {
  const BabySexInfoDialogWidget({Key? key, required this.updateFn})
      : super(key: key);
  final Function updateFn;

  @override
  State<BabySexInfoDialogWidget> createState() =>
      _BabySexInfoDialogWidgetState();
}

class _BabySexInfoDialogWidgetState extends State<BabySexInfoDialogWidget> {
  late final TextEditingController _heightController;
  late final TextEditingController _birthHeightController;

  @override
  void initState() {
    _heightController = TextEditingController();
    _birthHeightController = TextEditingController();
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
                controller: _heightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Current weight',
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: _birthHeightController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Birth weight',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var generalData = {
                    'height': _heightController.text,
                    'birth_height': _birthHeightController.text
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
