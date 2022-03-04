import 'package:flutter/material.dart';

import 'screens/nested_screens_first/screen_builder.dart';
import 'screens/nested_screens_second/screen_builder.dart';
import 'screens/nested_screens_third/screen_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom nav bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  late final _screens;

  final _keys = <GlobalKey<NavigatorState>>[
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  @override
  void initState() {
    super.initState();

    _screens = <Widget>[
      ScreenFirstBuilder(
        navigatorKey: _keys[0],
      ),
      ScreenSecondBuilder(
        navigatorKey: _keys[1],
      ),
      ScreenThirdBuilder(
        navigatorKey: _keys[2],
      ),
    ];
  }

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      if (_keys[index].currentState!.canPop()) {
        _keys[index].currentState!.popUntil((route) => route.isFirst);
      }
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            label: 'screen 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module_outlined),
            label: 'screen 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module_rounded),
            label: 'screen 3',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}
