import 'package:flutter/material.dart';

class NestedScreenSecondView2 extends StatelessWidget {
  const NestedScreenSecondView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('nested_2 screen second'),
        ),
        body: const Center(child: Text('nested_2 screen second')));
  }
}