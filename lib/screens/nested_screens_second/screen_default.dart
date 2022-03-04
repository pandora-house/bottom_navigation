import 'package:flutter/material.dart';

class DefaultScreenSecondView extends StatelessWidget {
  const DefaultScreenSecondView({Key? key,}) : super(key: key);

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
              const Text('default screen second'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/nested');
                  },
                  child: const Text('open nested second')),
            ],
          )),
    );
  }
}