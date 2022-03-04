import 'package:flutter/material.dart';

class DefaultScreenSecondView extends StatelessWidget {
  const DefaultScreenSecondView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default screen second'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/nested_1');
              },
              child: const Text('open nested_1 second')),
        ],
      )),
    );
  }
}
