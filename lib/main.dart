import 'package:babymeal/dependencies_config.dart';
import 'package:babymeal/screens/add_baby_form.screen.dart';
import 'package:babymeal/screens/add_feeding.screen.dart';
import 'package:babymeal/screens/dashboard.screen.dart';
import 'package:babymeal/screens/first_run.screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const BabyMeal());
}

class BabyMeal extends StatelessWidget {
  const BabyMeal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
          fontFamily: 'Comfortaa',
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ),
        home: const EntryScreen(),
        routes: {
          '/add_baby': (context) => const AddBabyFormScreen(),
          '/first_run': (context) => const FirstRunScreen(),
          '/add_feeding': (context) => const AddFeedingScreen(),
        });
  }
}

class EntryScreen extends StatelessWidget {
  const EntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt.allReady(),
      builder: (context, snapshot) =>
          snapshot.hasData ? const DashboardScreen() : Container(),
    );
  }
}
