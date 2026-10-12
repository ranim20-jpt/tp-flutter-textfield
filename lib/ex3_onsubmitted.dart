import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Ex3()));

class Ex3 extends StatefulWidget {
  const Ex3({super.key});

  @override
  State<Ex3> createState() => _Ex3State();
}

class _Ex3State extends State<Ex3> {
  String texte = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('onSubmitted')),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              // onSubmitted : appelé quand on appuie sur Entrée
              onSubmitted: (String value) {
                setState(() {
                  texte = value;
                });
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Entrez du texte puis appuyez sur Entrée',
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Vous avez saisi : $texte',
            style: const TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
