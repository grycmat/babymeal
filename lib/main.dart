import 'package:babymeal/screens/add_baby_form.screen.dart';
import 'package:babymeal/screens/first_run.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BabyMeal());
}

class BabyMeal extends StatelessWidget {
  const BabyMeal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
          fontFamily: 'Comfortaa',
        ),
        home: const EntryScreen(),
        routes: {
          '/add_baby': (context) => const AddBabyFormScreen(),
          '/first_run': (context) => const FirstRunScreen(),
        });
  }
}

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Appbar Title'),
      ),
      body: const FirstRunScreen(),
    );
  }
}
