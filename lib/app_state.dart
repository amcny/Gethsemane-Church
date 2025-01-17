import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _branch = '';
  String get branch => _branch;
  set branch(String value) {
    _branch = value;
  }

  bool _prayed = false;
  bool get prayed => _prayed;
  set prayed(bool value) {
    _prayed = value;
  }
}
