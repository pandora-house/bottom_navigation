import 'package:flutter/material.dart';

class DefaultScreenThirdView extends StatelessWidget {
  const DefaultScreenThirdView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('default screen third'),
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
                  child: const Text('open nested third')),
            ],
          )),
    );
  }
}