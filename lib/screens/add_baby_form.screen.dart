import 'package:flutter/material.dart';

class AddBabyFormScreen extends StatelessWidget {
  const AddBabyFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Baby')),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.baby_changing_station),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 40),
            child: Text(
              "Let's start by adding some baby info! Don't worry, most of this fields are optional, and you can always change this later.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Readex Pro',
                color: Color(0xFF737373),
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Baby's Name",
                hintText: "Enter your baby's name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Baby's Birthdate",
                hintText: "Enter your baby's birthdate",
              ),
            ),
          ),
          Row(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Birth Weight',
                  hintText: 'Weight',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Current weight',
                  hintText: 'Weight',
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Birth Height',
                  hintText: 'Height',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Current Height',
                  hintText: 'Height',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40, 40, 40, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Let's go!"),
            ),
          ),
        ],
      ),
    );
  }
}
