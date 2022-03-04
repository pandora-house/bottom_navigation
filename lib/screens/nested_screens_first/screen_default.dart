import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../navigator_provider.dart';

class DefaultScreenFirstView extends StatelessWidget {
  const DefaultScreenFirstView({Key? key,}) : super(key: key);

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
                    Navigator.of(context).pushNamed('/nested');
                  },
                  child: const Text('open nested first')),
              ElevatedButton(
                  onPressed: () {
                    context.read<NavigatorProvider>().openRoute(BottomMenu.itemSecond, '/nested_2');
                  },
                  child: const Text('open nested_2 from item 2')),
            ],
          )),
    );
  }
}