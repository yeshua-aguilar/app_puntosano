import 'package:flutter/material.dart';

class Registre extends StatelessWidget {
  const Registre({
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
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Transform.translate(
                      offset: const Offset(
                          0, -30), // Cambiado a 0 para centrar horizontalmente
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
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
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Nombre Completo',
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Apellido Completo',
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                ),
                                obscureText: true,
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/registre2');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  minimumSize: const Size(280, 40),
                                ),
                                child: Text(
                                  'Registrar',
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
                                    backgroundColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    minimumSize: const Size(280, 40),
                                    side:
                                        const BorderSide(color: Colors.black)),
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
                                onTap: () {},
                                child: const Text(
                                  '¿Tienes una cuenta? Entrar',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 40, 230, 40),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
