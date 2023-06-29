import 'package:babymeal/widgets/box.widget.dart';
import 'package:flutter/material.dart';

class BabyInfoWidget extends StatefulWidget {
  const BabyInfoWidget({Key? key}) : super(key: key);

  @override
  State<BabyInfoWidget> createState() => _BabyInfoWidgetState();
}

class _BabyInfoWidgetState extends State<BabyInfoWidget> {
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ok, now add some baby info",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Text(
            "Don't worry, you can always change it later",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: () {
                  showBottomSheet(
                      context: context,
                      builder: (_) {
                        return BottomSheet(
                          onClosing: () {},
                          builder: (BuildContext context) => Container(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextField(
                                    controller: _nameController,
                                    decoration: InputDecoration(
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
                                          firstDate: DateTime
                                              .fromMillisecondsSinceEpoch(1),
                                          lastDate: DateTime.now());
                                      _birthController.text =
                                          date.toString().split(' ')[0];
                                    },
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      labelText: 'Birth date',
                                    ),
                                  ),
                                  const SizedBox(height: 32),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Done'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: BoxWidget(
                  title: 'Name',
                  subtitle: 'Birth date',
                ),
              ),
              BoxWidget(title: 'Weight'),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              BoxWidget(title: 'Height'),
              BoxWidget(title: 'Sex'),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Ready'))
        ],
      ),
    );
  }
}
