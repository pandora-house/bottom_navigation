import 'package:flutter/material.dart';

class DefaultScreenFirstView extends StatelessWidget {
  const DefaultScreenFirstView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default screen first'),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/nested');
                  },
                  child: const Text('open nested first')),
            ],
          )),
    );
  }
}