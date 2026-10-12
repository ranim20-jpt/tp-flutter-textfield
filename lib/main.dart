import 'package:flutter/material.dart';

import 'ex1_controller.dart' as ex1;
import 'ex2_nom_complet_v1.dart' as ex2v1;
import 'ex2_nom_complet_v2.dart' as ex2v2;
import 'ex3_onsubmitted.dart' as ex3;
import 'ex4_formulaire.dart' as ex4;
import 'tp_meme_page.dart' as tp1;
import 'tp_navigation.dart' as tp2;
import 'app01_login.dart' as app01;
import 'app02_deux_methodes.dart' as app02;
import 'app03_valider.dart' as app03;
import 'app04_somme.dart' as app04;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TP Flutter',
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  // ouvre l'exercice choisi dans une nouvelle page
  void ouvrir(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TP Flutter - TextField')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Exercice 1 : controller (Text + AlertDialog)'),
            onTap: () => ouvrir(context, const ex1.MyHomePage()),
          ),
          ListTile(
            title: const Text('Exercice 2 v1 : nom complet (temps réel)'),
            onTap: () => ouvrir(context, const ex2v1.Ex2V1()),
          ),
          ListTile(
            title: const Text('Exercice 2 v2 : nom complet (bouton)'),
            onTap: () => ouvrir(context, const ex2v2.Ex2V2()),
          ),
          ListTile(
            title: const Text('Exercice 3 : onSubmitted'),
            onTap: () => ouvrir(context, const ex3.Ex3()),
          ),
          ListTile(
            title: const Text('Exercice 4 : formulaire'),
            onTap: () => ouvrir(context, const ex4.Ex4()),
          ),
          ListTile(
            title: const Text('TP : même page'),
            onTap: () => ouvrir(context, const tp1.RecupererValeur()),
          ),
          ListTile(
            title: const Text('TP : navigation'),
            onTap: () => ouvrir(context, const tp2.HomePage()),
          ),
          ListTile(
            title: const Text('App01 : login'),
            onTap: () => ouvrir(context, const app01.Login()),
          ),
          ListTile(
            title: const Text('App02 : controller et onChanged'),
            onTap: () => ouvrir(context, const app02.DeuxMethodes()),
          ),
          ListTile(
            title: const Text('App03 : valider'),
            onTap: () => ouvrir(context, const app03.MyHomePage()),
          ),
          ListTile(
            title: const Text('App04 : somme'),
            onTap: () => ouvrir(context, const app04.Somme()),
          ),
        ],
      ),
    );
  }
}
