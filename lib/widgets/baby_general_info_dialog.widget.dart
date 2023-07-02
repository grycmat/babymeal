import 'package:flutter/material.dart';

class BabyGeneralInfoDialogWidget extends StatefulWidget {
  const BabyGeneralInfoDialogWidget({Key? key, required this.updateFn})
      : super(key: key);
  final Function updateFn;

  @override
  State<BabyGeneralInfoDialogWidget> createState() =>
      _BabyGeneralInfoDialogWidgetState();
}

class _BabyGeneralInfoDialogWidgetState
    extends State<BabyGeneralInfoDialogWidget> {
  late final TextEditingController _nameController;
  late final TextEditingController _birthController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _birthController = TextEditingController();
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
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Baby name',
                ),
              ),
              TextField(
                canRequestFocus: false,
                keyboardType: TextInputType.none,
                controller: _birthController,
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.fromMillisecondsSinceEpoch(1),
                    lastDate: DateTime.now(),
                  );
                  _birthController.text = date.toString().split(' ')[0];
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Birth date',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var generalData = {
                    'name': _nameController.text,
                    'birthDate': _birthController.text
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
