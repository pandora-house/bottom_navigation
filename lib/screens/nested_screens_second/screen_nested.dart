import 'package:flutter/material.dart';

class NestedScreenSecondView extends StatelessWidget {
  const NestedScreenSecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('nested screen second'),
        ),
        body: const Center(child: Text('nested screen second')));
  }
}