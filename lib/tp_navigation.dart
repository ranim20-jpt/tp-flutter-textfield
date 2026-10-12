import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _textFieldController = TextEditingController();

  void _navigateToResultPage(BuildContext context) {
    String value = _textFieldController.text;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultPage(value: value)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _textFieldController,
              decoration: const InputDecoration(
                labelText: 'Saisissez du texte',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _navigateToResultPage(context),
              child: const Text('Afficher'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final String value;

  const ResultPage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result Page')),
      body: Center(child: Text('Data from TextField: $value')),
    );
  }
}
