import 'package:flutter/material.dart';

class NestedScreenThirdView extends StatelessWidget {
  const NestedScreenThirdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('nested screen third'),
        ),
        body: const Center(child: Text('nested screen third')));
  }
}