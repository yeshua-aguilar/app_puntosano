import 'package:flutter/material.dart';

class Registre4 extends StatefulWidget {
  const Registre4({Key? key}) : super(key: key);

  @override
  _Registre4State createState() => _Registre4State();
}

class _Registre4State extends State<Registre4> {
  String pregunta1Selecionado = '';
  String pregunta2Selecionado = '';
  String pregunta3Selecionado = '';

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
            child: Column(
              children: [
                Transform.translate(
                  offset: const Offset(0, 50),
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
                SizedBox(height: 100.0),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //pregunta 1
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '¿Tiene un horario preferido para hacer ejercicio?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Wrap(
                                alignment: WrapAlignment.start,
                                spacing: -30.0,
                                runSpacing: 1.0,
                                children: [
                                  Container(
                                    width: 160,
                                    child: RadioListTile(
                                      title: Text('Mañana'),
                                      value: 'mañana',
                                      groupValue: pregunta1Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta1Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: RadioListTile(
                                      title: Text('Tarde'),
                                      value: 'tarde',
                                      groupValue: pregunta1Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta1Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: RadioListTile(
                                      title: Text('Noche'),
                                      value: 'noche',
                                      groupValue: pregunta1Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta1Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              //pregunta 2
                              const Text(
                                '¿Cuanto tiempo tiene disponible para cada sesión de ejercicio?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Wrap(
                                alignment: WrapAlignment.start,
                                spacing: -40.0,
                                runSpacing: 1.0,
                                children: [
                                  Container(
                                    width: 150,
                                    child: RadioListTile(
                                      title: Text('Menos de 15 min'),
                                      value: '15min',
                                      groupValue: pregunta2Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta2Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: RadioListTile(
                                      title: Text('15-30 min'),
                                      value: '15-30min',
                                      groupValue: pregunta2Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta2Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: RadioListTile(
                                      title: Text('Más de 30 min'),
                                      value: 'mas30min',
                                      groupValue: pregunta2Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta2Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              //pregunta 3
                              const Text(
                                '¿Con que frecuencia planea hacer ejercicio?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Wrap(
                                alignment: WrapAlignment.start,
                                spacing: -10.0,
                                runSpacing: 1.0,
                                children: [
                                  Container(
                                    width: 150,
                                    child: RadioListTile(
                                      title: Text('Diario'),
                                      value: 'diario',
                                      groupValue: pregunta3Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta3Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 220,
                                    child: RadioListTile(
                                      title: Text('Menos de 3 veces semanal'),
                                      value: '3vecesSemanal',
                                      groupValue: pregunta3Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta3Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 220,
                                    child: RadioListTile(
                                      title: Text('ocacionalmente'),
                                      value: 'ocacionalmente',
                                      groupValue: pregunta3Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta3Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // boton
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/camara');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: const Text('Siguiente',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
