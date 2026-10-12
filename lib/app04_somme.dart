import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Somme()));

class Somme extends StatefulWidget {
  const Somme({super.key});

  @override
  State<Somme> createState() => _SommeState();
}

class _SommeState extends State<Somme> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  String resultat = '';

  void valider() {
    // tryParse renvoie null si ce n'est pas un nombre -> on met 0
    int a = int.tryParse(controller1.text) ?? 0;
    int b = int.tryParse(controller2.text) ?? 0;
    setState(() {
      resultat = 'La somme de $a et $b est ${a + b}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Somme')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller1,
              decoration: const InputDecoration(hintText: 'Entrez un nombre'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller2,
              decoration: const InputDecoration(hintText: 'Entrez un nombre'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: valider, child: const Text('Valider')),
            const SizedBox(height: 20),
            Text(resultat, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
