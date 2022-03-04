import 'package:flutter/material.dart';

import 'screen_default.dart';
import 'screen_nested.dart';

class ScreenFirstBuilder extends StatelessWidget {
  const ScreenFirstBuilder({Key? key, required this.navigatorKey})
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
            builder = (BuildContext _) => const DefaultScreenFirstView();
            break;
          case '/nested':
            builder = (BuildContext _) => const NestedScreenFirstView();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
