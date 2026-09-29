import 'package:flutter/material.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<StatefulWidget> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FlutterDex"), centerTitle: true),
        body: Text(
          "Lista de Pokemons Registrados",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
