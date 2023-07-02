import 'package:babymeal/widgets/baby_general_info_dialog.widget.dart';
import 'package:babymeal/widgets/baby_height_info_dialog.widget.dart';
import 'package:babymeal/widgets/baby_weight_info_dialog.widget.dart';
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
  String _name = 'Name';
  String _birthDate = 'Birth date';
  final String _weight = 'Weight';
  final String _height = 'Height';
  final String _sex = 'Sex';
  Map<String, String> _generalData = {},
      _weightData = {},
      _heightData = {},
      _sexData = {};

  @override
  void initState() {
    _nameController = TextEditingController();
    _birthController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 32, 12, 64),
              child: Text(
                "Don't worry, you can always change it later",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {
                    showGeneralDialog(
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return BabyGeneralInfoDialogWidget(updateFn: (data) {
                            setState(() {
                              _generalData = data;
                            });
                          });
                        });
                  },
                  child: BoxWidget(
                    title: _generalData['name'] ?? 'Name',
                    subtitle: _generalData['birthDate'] ?? 'Birth date',
                    isFilled: _generalData.isNotEmpty,
                  ),
                ),
                InkWell(
                  onTap: () {
                    showGeneralDialog(
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return BabyWeightInfoDialogWidget(updateFn: (data) {
                            setState(() {
                              _weightData = data;
                            });
                          });
                        });
                  },
                  child: BoxWidget(
                    title: _weightData['weight'] ?? 'Weight',
                    subtitle: _weightData['birth_weight'] ?? '',
                    isFilled: _weightData.isNotEmpty,
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {
                    showGeneralDialog(
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return BabyHeightInfoDialogWidget(updateFn: (data) {
                            setState(() {
                              _heightData = data;
                            });
                          });
                        });
                  },
                  child: BoxWidget(
                    title: _heightData['height'] ?? 'Height',
                    subtitle: _heightData['birth_height'] ?? '',
                    isFilled: _heightData.isNotEmpty,
                  ),
                ),
                BoxWidget(title: _sex),
              ],
            ),
            Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text('Ready'))
          ],
        ),
      ),
    );
  }
}
