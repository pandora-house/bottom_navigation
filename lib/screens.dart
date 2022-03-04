import 'package:flutter/material.dart';

class DefaultScreenView extends StatelessWidget {
  const DefaultScreenView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('default screen $index'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('default screen $index'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/nested');
              },
              child: const Text('open nested screen')),
        ],
      )),
    );
  }
}

class NestedScreenView extends StatelessWidget {
  const NestedScreenView({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('nested screen $index'),
        ),
        body: Center(child: Text('nested screen $index')));
  }
}
