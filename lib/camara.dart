import 'package:flutter/material.dart';

class Camara extends StatelessWidget {
  const Camara({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Text('hola mundo'),
        ],
      ),
    );
  }
}
