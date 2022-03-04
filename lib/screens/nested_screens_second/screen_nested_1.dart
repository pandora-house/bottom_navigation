import 'package:flutter/material.dart';

class NestedScreenSecondView1 extends StatelessWidget {
  const NestedScreenSecondView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('nested_1 screen second'),
        ),
        body: const Center(child: Text('nested_1 screen second')));
  }
}