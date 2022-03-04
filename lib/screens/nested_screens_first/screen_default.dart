import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../navigator_provider.dart';
import '../nested_screens_second/screen_builder.dart';
import 'screen_builder.dart';

class DefaultScreenFirstView extends StatelessWidget {
  const DefaultScreenFirstView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default screen first'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ScreenFirstBuilder.nestedRoutName);
              },
              child: const Text('open nested first')),
          ElevatedButton(
              onPressed: () {
                context.read<NavigatorProvider>().openRoute(
                    BottomMenu.itemSecond,
                    ScreenSecondBuilder.nestedRoutSecondName);
              },
              child: const Text('open nested_2 from item 2')),
        ],
      )),
    );
  }
}
