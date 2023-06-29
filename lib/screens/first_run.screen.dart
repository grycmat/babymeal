import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key, required this.title, this.subtitle = ''})
      : super(key: key);
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade100,
        ),
        width: 150,
        height: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '👼',
            style: TextStyle(fontSize: 80),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'BabyTracker Beacon',
            style: TextStyle(
              color: Color(0xFF737373),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Welcome to BTB! Track your baby's feeding and growth with ease!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF737373),
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                minimumSize: const Size(double.infinity, 60)),
            onPressed: () {
              Navigator.pushNamed(context, '/first_run');
            },
            child: const Text('Start'),
          ),
        ),
      ],
    );
  }
}

class AccountNameWidget extends StatelessWidget {
  const AccountNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'How should I call you?',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Proud parent 😎',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Next'),
          )
        ],
      ),
    );
  }
}

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
