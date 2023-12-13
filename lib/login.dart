import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    Key? key,
  }) : super(key: key);

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
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Transform.translate(
                    offset: const Offset(0, 80),
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
                  SizedBox(height: 180),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 370,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0,
                                3), // Cambia el desplazamiento según tus necesidades
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Telefono o Correo Electronico',
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                              ),
                              obscureText: true,
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                '¿Has olvidado tu contraseña?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 40, 230, 40),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Acción al presionar el botón
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: const Size(280, 40),
                              ),
                              child: Text(
                                'Entrar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              child: Divider(
                                color: Colors.black,
                                thickness: 1.0,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Acción al presionar el botón
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  minimumSize: const Size(280, 40),
                                  side: const BorderSide(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/google_icon.png',
                                    width: 25,
                                    height: 25,
                                  ),
                                  const SizedBox(
                                      width:
                                          8), // Espacio entre el texto y la imagen
                                  const Text(
                                    'Iniciar Sesión con gmail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/registre');
                              },
                              child: const Text(
                                '¿Aun no tienes una cuenta? Registrar',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 40, 230, 40),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
