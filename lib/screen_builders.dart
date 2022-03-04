import 'package:flutter/material.dart';

import 'screens.dart';

class ScreenFirstBuilder extends StatelessWidget {
  const ScreenFirstBuilder(
      {Key? key, required this.navigatorKey, required this.index})
      : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => DefaultScreenView(
                  key: UniqueKey(),
                  index: index,
                );
            break;
          case '/nested':
            builder = (BuildContext _) => NestedScreenView(
                  key: UniqueKey(),
                  index: index,
                );
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}

class ScreenSecondBuilder extends StatelessWidget {
  const ScreenSecondBuilder(
      {Key? key, required this.navigatorKey, required this.index})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => DefaultScreenView(
                  key: UniqueKey(),
                  index: index,
                );
            break;
          case '/nested':
            builder = (BuildContext _) => NestedScreenView(
                  key: UniqueKey(),
                  index: index,
                );
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}

class ScreenThirdBuilder extends StatelessWidget {
  const ScreenThirdBuilder(
      {Key? key, required this.navigatorKey, required this.index})
      : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => DefaultScreenView(
                  key: UniqueKey(),
                  index: index,
                );
            break;
          case '/nested':
            builder = (BuildContext _) => NestedScreenView(
                  key: UniqueKey(),
                  index: index,
                );
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute<void>(builder: builder, settings: settings);
      },
    );
  }
}
