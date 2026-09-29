import 'package:flutter/material.dart';
import 'package:flutterdex/screens/description.dart';
import 'package:flutterdex/screens/listing.dart';
import 'package:provider/provider.dart';
import 'package:flutterdex/state_manager.dart';

void main() {
  runApp(const FlutterDex());
}

class FlutterDex extends StatelessWidget {
  const FlutterDex({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StateManager(),
      child: MaterialApp(
        title: "Flutterdex",
        theme: ThemeData(colorScheme: ColorScheme.dark()),
        home: const MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<StateManager>();

    Widget screen = const SizedBox.shrink();
    if (appState.showing == ActualScreen.listScreen) {
      screen = Listing();
    } else if (appState.showing == ActualScreen.descriptionScreen) {
      screen = Description();
    }

    return screen;
  }
}
