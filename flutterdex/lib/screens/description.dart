import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<StatefulWidget> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FlutterDex"), centerTitle: true),
        body: Text(
          "Lista de Pokemons",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
