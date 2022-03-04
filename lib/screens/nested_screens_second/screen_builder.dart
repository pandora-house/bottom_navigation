import 'package:flutter/material.dart';

import 'screen_default.dart';
import 'screen_nested_1.dart';
import 'screen_nested_2.dart';

class ScreenSecondBuilder extends StatelessWidget {
  const ScreenSecondBuilder({Key? key, required this.navigatorKey})
      : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => const DefaultScreenSecondView();
            break;
          case '/nested_1':
            builder = (BuildContext _) => const NestedScreenSecondView1();
            break;
          case '/nested_2':
            builder = (BuildContext _) => const NestedScreenSecondView2();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
