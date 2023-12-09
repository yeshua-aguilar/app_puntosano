import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Pantalla'),
      ),
      body: const Center(
        child: Text('¡Bienvenido a la nueva pantalla!'),
      ),
    );
  }
}
