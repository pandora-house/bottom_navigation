import 'package:flutter/material.dart';

import 'screen_builder.dart';

class DefaultScreenThirdView extends StatelessWidget {
  const DefaultScreenThirdView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default screen third'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(ScreenThirdBuilder.nestedRoutName);
              },
              child: const Text('open nested third')),
        ],
      )),
    );
  }
}
