import 'package:flutter/material.dart';

import 'screen_default.dart';
import 'screen_nested.dart';

class ScreenThirdBuilder extends StatelessWidget {
  const ScreenThirdBuilder({Key? key, required this.navigatorKey})
      : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  static const defaultRoutName = '/';
  static const nestedRoutName = '/nested';

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: defaultRoutName,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case defaultRoutName:
            builder = (BuildContext _) => const DefaultScreenThirdView();
            break;
          case nestedRoutName:
            builder = (BuildContext _) => const NestedScreenThirdView();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
