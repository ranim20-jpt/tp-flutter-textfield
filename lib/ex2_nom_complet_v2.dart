import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Ex2V2()));

class Ex2V2 extends StatefulWidget {
  const Ex2V2({super.key});

  @override
  State<Ex2V2> createState() => _Ex2V2State();
}

class _Ex2V2State extends State<Ex2V2> {
  String prenom = '';
  String nom = '';
  String nomComplet = '';

  void updateFullName() {
    setState(() {
      nomComplet = '$prenom $nom';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nom complet (avec bouton)')),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
                prenom = value; // on stocke seulement, sans setState
              },
              decoration: const InputDecoration(
                labelText: 'Prénom',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                nom = value;
              },
              decoration: const InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: updateFullName, // l'affichage change seulement ici
              child: const Text('Afficher le nom complet'),
            ),
            const SizedBox(height: 16),
            Text(nomComplet,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
