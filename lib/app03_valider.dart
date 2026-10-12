import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();
  String valueText = '';

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Exemple')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez une valeur',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                valueText = myController.text;
              });
            },
            child: const Text('Valider'),
          ),
          const SizedBox(height: 16),
          Text('Valeur saisie : $valueText',
              style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
