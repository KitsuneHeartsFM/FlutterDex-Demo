import 'package:flutter/material.dart';

enum ActualScreen { listScreen, descriptionScreen }

class StateManager extends ChangeNotifier {
  ActualScreen _showing = ActualScreen.listScreen;
  ActualScreen get showing => _showing;

  void showList() {
    _showing = ActualScreen.listScreen;

    notifyListeners();
  }

  void showDescription() {
    _showing = ActualScreen.descriptionScreen;

    notifyListeners();
  }
}
