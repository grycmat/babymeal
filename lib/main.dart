import 'package:babymeal/screens/add_baby_form.screen.dart';
import 'package:babymeal/screens/welcome.screen.dart';
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Comfortaa',
        ),
        home: const EntryScreen(),
        routes: {
          '/add_baby': (context) => const AddBabyFormScreen(),
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
        title: Text('Appbar Title'),
      ),
      body: WelcomeScreen(),
    );
  }
}
