import 'package:app_puntosano/login.dart';
import 'package:app_puntosano/registre.dart';
import 'package:app_puntosano/registre2.dart';
import 'package:app_puntosano/registre3.dart';
import 'package:app_puntosano/registre4.dart';
import 'package:app_puntosano/camara.dart';
import 'package:app_puntosano/botton_appbar.dart';

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
        '/camara': (context) => const Camara(),
        '/bottonapp': (context) => const BottomNavigationBarExample(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/hambur.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 70),
                      Container(
                        width: 200, // Establece el ancho deseado para la imagen
                        height:
                            200, // Establece la altura deseada para la imagen
                        child: Image.asset('assets/img/puntosano.png'),
                      ),
                      SizedBox(height: 350), // Reducir el espacio en blanco
                      Container(
                        width: 230.0, // Ancho del botón
                        height: 50.0, // Altura del botón
                        child: TextButton(
                          onPressed: () {
                            // Acción que se ejecuta al presionar el botón
                          },
                          child: Text(
                            'Log In', // Texto del botón en español
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // Agrega un espacio antes del texto
                      Wrap(
                        children: <Widget>[
                          Text(
                            '¿No tienes una cuenta?', // Texto en español
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navega a la pantalla de registro
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Registre()));
                            },
                            child: Text(
                              ' Registrarse', // Texto en español
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                    ],
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
