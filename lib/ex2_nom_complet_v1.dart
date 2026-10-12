import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Ex2V1()));

class Ex2V1 extends StatefulWidget {
  const Ex2V1({super.key});

  @override
  State<Ex2V1> createState() => _Ex2V1State();
}

class _Ex2V1State extends State<Ex2V1> {
  String prenom = '';
  String nom = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nom complet (temps réel)')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: TextField(
              // onChanged : appelé à chaque lettre tapée
              onChanged: (value) {
                setState(() {
                  prenom = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Prénom',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  nom = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Nom',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('Nom complet : $prenom $nom',
              style: const TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
