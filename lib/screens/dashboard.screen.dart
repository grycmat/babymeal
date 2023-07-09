import 'package:animations/animations.dart';
import 'package:babymeal/screens/add_feeding.screen.dart';
import 'package:babymeal/widgets/dashboard/dashboard_content.widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 228, 182, 45),
            Color.fromARGB(255, 202, 57, 105),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Welcome proud parent!'),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home', tooltip: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              tooltip: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
              tooltip: 'Calendar'),
        ]),
        floatingActionButton: OpenContainer(
          closedShape: const CircleBorder(),
          transitionType: ContainerTransitionType.fadeThrough,
          openBuilder: (context, action) {
            return const AddFeedingScreen();
          },
          closedBuilder: (context, action) {
            return FloatingActionButton(
              onPressed: () {
                action();
              },
              child: const Icon(Icons.add),
            );
          },
        ),
        body: const DashboardContentWidget(),
      ),
    );
  }
}
