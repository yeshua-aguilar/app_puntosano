import 'package:app_puntosano/login.dart';
import 'package:app_puntosano/registre.dart';
import 'package:app_puntosano/registre2.dart';
import 'package:app_puntosano/registre3.dart';
import 'package:app_puntosano/registre4.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const Login(),
        '/registre': (context) => const Registre(),
        '/registre2': (context) => const Registre2(),
        '/registre3': (context) => const Registre3(),
        '/registre4': (context) => const Registre4(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/hambur.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Transform.translate(
            offset: const Offset(100, 100),
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
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
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(280, 50),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          const Positioned(
            bottom: 100,
            left: 70,
            child: Text(
              '¿No tienes una cuenta?',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 70,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/registre');
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
    );
  }
}
