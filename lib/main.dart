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
            ),
            Positioned(
              bottom: 150,
              left: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Acción a realizar cuando se presiona el botón
                  print('¡Presionaste el botón de Log In!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize:
                      const Size(280, 50), // Ajusta el tamaño del botón
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(70, 740),
              child: const Text(
                '¿no tienes una cuenta?',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            Transform.translate(
              offset: const Offset(260, 740),
              child: GestureDetector(
                onTap: () {
                  // Acciones a realizar cuando se presione el texto
                  print('Texto presionado');
                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
