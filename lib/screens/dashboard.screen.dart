import 'package:babymeal/widgets/dashboard/dashboard_content.widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_feeding');
        },
        child: const Icon(Icons.add),
      ),
      body: const DashboardContentWidget(),
    );
  }
}
