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
          Positioned(
            left: 20,
            bottom: 100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  width: 370,
                  height: 600,
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
                            '¿Has experimentado fatiga o falta de energia ultimamente?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              Container(
                                width: 110,
                                child: RadioListTile(
                                  title: Text('si'),
                                  value: 'opcion1',
                                  groupValue: pregunta1Selecionado,
                                  onChanged: (value) {
                                    setState(() {
                                      pregunta1Selecionado = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 220,
                                child: RadioListTile(
                                  title: Text('ocasionalmente'),
                                  value: 'opcion2',
                                  groupValue: pregunta1Selecionado,
                                  onChanged: (value) {
                                    setState(() {
                                      pregunta1Selecionado = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 120,
                                child: RadioListTile(
                                  title: Text('no'),
                                  value: 'opcion3',
                                  groupValue: pregunta1Selecionado,
                                  onChanged: (value) {
                                    setState(() {
                                      pregunta1Selecionado = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          //pregunta 2
                          const Text(
                            '¿Has experimentado fatiga o falta de energia ultimamente?',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              Container(
                                width: 110,
                                child: RadioListTile(
                                  title: Text('si'),
                                  value: 'opcion1',
                                  groupValue: pregunta1Selecionado,
                                  onChanged: (value) {
                                    setState(() {
                                      pregunta1Selecionado = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 220,
                                child: RadioListTile(
                                  title: Text('ocasionalmente'),
                                  value: 'opcion2',
                                  groupValue: pregunta1Selecionado,
                                  onChanged: (value) {
                                    setState(() {
                                      pregunta1Selecionado = value.toString();
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: 120,
                                child: RadioListTile(
                                  title: Text('no'),
                                  value: 'opcion3',
                                  groupValue: pregunta1Selecionado,
                                  onChanged: (value) {
                                    setState(() {
                                      pregunta1Selecionado = value.toString();
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
                          // Do something when the button is pressed.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Siguiente',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
