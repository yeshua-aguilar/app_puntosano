import 'package:flutter/material.dart';

class Registre3 extends StatefulWidget {
  const Registre3({Key? key}) : super(key: key);

  @override
  _Registre3State createState() => _Registre3State();
}

class _Registre3State extends State<Registre3> {
  String pregunta1Selecionado = '';
  String pregunta2Selecionado = '';
  String pregunta3Selecionado = '';
  String pregunta4Selecionado = '';
  String pregunta5Selecionado = '';

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
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //pregunta 1
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '¿Has experimentado fatiga o falta de energia ultimamente?',
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
                                    width: 110,
                                    child: RadioListTile(
                                      title: Text('si'),
                                      value: 'si',
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
                                    width: 220,
                                    child: RadioListTile(
                                      title: Text('ocasionalmente'),
                                      value: 'ocasionalmente',
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
                                    width: 120,
                                    child: RadioListTile(
                                      title: Text('no'),
                                      value: 'no',
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
                                '¿Notas algun cambio en tu nivel de energia en comparacion con periodos anteriores?',
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
                                    width: 110,
                                    child: RadioListTile(
                                      title: Text('si'),
                                      value: 'si',
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
                                    width: 120,
                                    child: RadioListTile(
                                      title: Text('no'),
                                      value: 'no',
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
                                '¿Encuentras dificultades para realizar actividades diarias, como subir escaleras, caminar distancias cortas, o realizar tareas cotidianas?',
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
                                    width: 110,
                                    child: RadioListTile(
                                      title: Text('si'),
                                      value: 'si',
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
                                    width: 170,
                                    child: RadioListTile(
                                      title: Text('a veces'),
                                      value: 'aveces',
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
                                    width: 120,
                                    child: RadioListTile(
                                      title: Text('no'),
                                      value: 'no',
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
                              //pregunta 4
                              const Text(
                                '¿Experimentas dolor en las articulaciones o los musculos, especialmente en areas como las rodillas, la espalda o las caderas?',
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
                                    width: 110,
                                    child: RadioListTile(
                                      title: Text('si'),
                                      value: 'si',
                                      groupValue: pregunta4Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta4Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: RadioListTile(
                                      title: Text('a veces'),
                                      value: 'aveces',
                                      groupValue: pregunta4Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta4Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    child: RadioListTile(
                                      title: Text('no'),
                                      value: 'no',
                                      groupValue: pregunta4Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta4Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              //pregunta 5
                              const Text(
                                '¿Tienes conocimiento de tu presion arterial o has experimentado problemas cardiacos en el pasado?',
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
                                    width: 110,
                                    child: RadioListTile(
                                      title: Text('si'),
                                      value: 'si',
                                      groupValue: pregunta5Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta5Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 160,
                                    child: RadioListTile(
                                      title: Text('a veces'),
                                      value: 'aveces',
                                      groupValue: pregunta5Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta5Selecionado =
                                              value.toString();
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    child: RadioListTile(
                                      title: Text('no'),
                                      value: 'no',
                                      groupValue: pregunta5Selecionado,
                                      onChanged: (value) {
                                        setState(() {
                                          pregunta5Selecionado =
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
                              Navigator.pushNamed(context, '/registre4');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: const Text('Siguiente',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
