import 'package:babymeal/widgets/account_name.widget.dart';
import 'package:babymeal/widgets/baby_info.widget.dart';
import 'package:babymeal/widgets/welcome.widget.dart';
import 'package:flutter/material.dart';

class FirstRunScreen extends StatefulWidget {
  const FirstRunScreen({Key? key}) : super(key: key);

  @override
  State<FirstRunScreen> createState() => _FirstRunScreenState();
}

class _FirstRunScreenState extends State<FirstRunScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  moveToIndex(int index) => _tabController.animateTo(index,
      duration: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              WelcomeWidget(
                animateTo: moveToIndex,
              ),
              AccountNameWidget(animateTo: moveToIndex),
              const BabyInfoWidget(),
            ]),
      ),
    );
  }
}
