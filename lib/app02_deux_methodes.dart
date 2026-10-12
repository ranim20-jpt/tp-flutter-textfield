import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: DeuxMethodes()));

class DeuxMethodes extends StatefulWidget {
  const DeuxMethodes({super.key});

  @override
  State<DeuxMethodes> createState() => _DeuxMethodesState();
}

class _DeuxMethodesState extends State<DeuxMethodes> {
  final controller = TextEditingController();
  String valeur1 = ''; // méthode 1 : controller
  String valeur2 = ''; // méthode 2 : onChanged

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('controller et onChanged')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Exemple 1 : controller'),
            TextField(controller: controller),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  valeur1 = controller.text;
                });
              },
              child: const Text('Lire la valeur'),
            ),
            Text('Valeur : $valeur1'),
            const SizedBox(height: 40),
            const Text('Exemple 2 : onChanged'),
            TextField(
              onChanged: (String value) {
                setState(() {
                  valeur2 = value;
                });
              },
            ),
            Text('Valeur : $valeur2'),
          ],
        ),
      ),
    );
  }
}
