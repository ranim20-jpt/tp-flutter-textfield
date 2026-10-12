import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // le contrôleur sert à lire ce que l'utilisateur écrit
  final _controller = TextEditingController();
  String _valeurAffichee = '';

  void afficheDialog(String texte) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Texte saisi'),
          content: Text(texte),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Fermer'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemple de TextField')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller, // on associe le contrôleur
              decoration: const InputDecoration(
                labelText: 'Entrez votre texte ici',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.text_fields),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _valeurAffichee = _controller.text; // on lit la valeur
                });
                afficheDialog(_valeurAffichee);
              },
              child: const Text('Afficher le texte'),
            ),
            const SizedBox(height: 20),
            Text(
              _valeurAffichee.isEmpty ? 'Aucun texte saisi.' : _valeurAffichee,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
