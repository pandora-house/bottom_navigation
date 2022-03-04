import 'package:flutter/material.dart';

class NestedScreenFirstView extends StatelessWidget {
  const NestedScreenFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('nested screen first'),
        ),
        body: const Center(child: Text('nested screen first')));
  }
}