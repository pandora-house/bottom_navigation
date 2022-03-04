import 'package:flutter/material.dart';

import 'screen_builder.dart';

class NestedScreenSecondView1 extends StatelessWidget {
  const NestedScreenSecondView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('nested_1 screen second'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(ScreenSecondBuilder.nestedRoutSecondName);
                },
                child: const Text('open nested_2 second'))));
  }
}
