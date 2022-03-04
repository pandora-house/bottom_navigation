import 'package:flutter/material.dart';

enum BottomMenu {itemFirst, itemSecond, itemThird}

class NavigatorProvider extends ChangeNotifier{
  var _navigatorKeys = <GlobalKey<NavigatorState>>[];
  var _screenIndex = 0;

  int screenIndex() => _screenIndex;

  void setNavigatorKeys(List<GlobalKey<NavigatorState>> keys) {
    _navigatorKeys = keys;
  }

  void setScreenIndex(int index) {
    _screenIndex = index;
    notifyListeners();
  }

  void openRoute(BottomMenu menuItem, String route) {
    _screenIndex = menuItem.index;
    notifyListeners();
    _navigatorKeys[menuItem.index].currentState!.pushNamed(route);
  }
}
