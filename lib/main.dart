import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/img/hambur.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Transform.translate(
              offset: const Offset(110, 100),
              child: CircleAvatar(
                radius:
                    100, // Ajusta el tamaño del círculo según tus necesidades
                backgroundColor: Colors
                    .transparent, // Establece el fondo del círculo como transparente
                child: ClipOval(
                  child: Image.asset(
                    'assets/img/logo_puntosano.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
