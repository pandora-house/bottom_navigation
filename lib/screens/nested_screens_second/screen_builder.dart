import 'package:flutter/material.dart';

import 'screen_default.dart';
import 'screen_nested_1.dart';
import 'screen_nested_2.dart';

class ScreenSecondBuilder extends StatelessWidget {
  const ScreenSecondBuilder({Key? key, required this.navigatorKey})
      : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  static const defaultRoutName = '/';
  static const nestedRoutFirstName = '/nested_1';
  static const nestedRoutSecondName = '/nested_2';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: defaultRoutName,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case defaultRoutName:
            builder = (BuildContext _) => const DefaultScreenSecondView();
            break;
          case nestedRoutFirstName:
            builder = (BuildContext _) => const NestedScreenSecondView1();
            break;
          case nestedRoutSecondName:
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
