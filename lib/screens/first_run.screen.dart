import 'package:babymeal/widgets/account_name.widget.dart';
import 'package:babymeal/widgets/baby_info.widget.dart';
import 'package:babymeal/widgets/welcome.widget.dart';
import 'package:flutter/material.dart';

class FirstRunScreen extends StatelessWidget {
  const FirstRunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: TabBarView(children: [
            WelcomeWidget(),
            AccountNameWidget(),
            BabyInfoWidget(),
          ]),
        ),
      ),
    );
  }
}
