import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterDex());
}

class FlutterDex extends StatelessWidget {
  const FlutterDex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FlutterDex"), centerTitle: true),
        body: Text(
          "Welcome to the FlutterDex!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
