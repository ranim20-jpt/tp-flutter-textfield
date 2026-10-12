import 'package:flutter/material.dart';

void main() => runApp(const MyTextField());

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RecupererValeur());
  }
}

class RecupererValeur extends StatefulWidget {
  const RecupererValeur({super.key});

  @override
  State<RecupererValeur> createState() => _RecupererValeurState();
}

class _RecupererValeurState extends State<RecupererValeur> {
  final controller = TextEditingController();
  String resultat = '';

  void recupererDonnees() {
    setState(() {
      resultat = controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Récupérer le contenu d'un TextField")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(hintText: 'Écrivez du texte ici'),
              ),
            ),
            ElevatedButton(
              onPressed: recupererDonnees,
              child: const Text('Récupérer le texte saisi'),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text('Le texte saisi est = $resultat',
                  style: const TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
