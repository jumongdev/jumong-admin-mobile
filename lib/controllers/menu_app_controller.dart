import 'package:flutter/material.dart';

class MenuAppController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  int get selectedIndex => _selectedIndex;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }

  }
  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners(); // This triggers the UI to update
  }
}