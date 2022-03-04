import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navigator_provider.dart';
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
      home: ChangeNotifierProvider(
        create: (context) => NavigatorProvider(),
        child: const MyHomePage(),
      ),
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

  final _screens = <Widget>[];

  final _keys = <GlobalKey<NavigatorState>>[
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  @override
  void initState() {
    super.initState();

    context.read<NavigatorProvider>().setNavigatorKeys(_keys);

    _screens.addAll([
      ScreenFirstBuilder(
        navigatorKey: _keys[BottomMenu.itemFirst.index],
      ),
      ScreenSecondBuilder(
        navigatorKey: _keys[BottomMenu.itemSecond.index],
      ),
      ScreenThirdBuilder(
        navigatorKey: _keys[BottomMenu.itemThird.index],
      ),
    ]);
  }

  void _onItemTapped(int index) {
    context.read<NavigatorProvider>().setScreenIndex(index);

    if (index == _selectedIndex) {
      if (_keys[index].currentState!.canPop()) {
        _keys[index].currentState!.popUntil((route) => route.isFirst);
      }
    } else {
      _selectedIndex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    _selectedIndex = context.watch<NavigatorProvider>().screenIndex();
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module),
            label: 'item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module_outlined),
            label: 'item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_module_rounded),
            label: 'item 3',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
}
