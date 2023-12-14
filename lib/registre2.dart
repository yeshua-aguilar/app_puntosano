import 'package:flutter/material.dart';

class Registre2 extends StatefulWidget {
  const Registre2({Key? key}) : super(key: key);

  @override
  _Registre2State createState() => _Registre2State();
}

class _Registre2State extends State<Registre2> {
  String generoSeleccionado = '';
  String obesidadSelecionado = '';
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
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -10),
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
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 100,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Edad',
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Peso Actual',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Seleccione su genero',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: RadioListTile(
                                    title: Text('Hombre'),
                                    value: 'Hombre',
                                    groupValue: generoSeleccionado,
                                    onChanged: (value) {
                                      setState(() {
                                        generoSeleccionado = value.toString();
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RadioListTile(
                                    title: Text('Mujer'),
                                    value: 'Mujer',
                                    groupValue: generoSeleccionado,
                                    onChanged: (value) {
                                      setState(() {
                                        generoSeleccionado = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            //pregunta 2
                            Text(
                              '¿Alguien en tu familia cercana ha tenido problemas de obesidad?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: RadioListTile(
                                    title: Text('Si'),
                                    value: 'si',
                                    groupValue: obesidadSelecionado,
                                    onChanged: (value) {
                                      setState(() {
                                        obesidadSelecionado = value.toString();
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RadioListTile(
                                    title: Text('No'),
                                    value: 'no',
                                    groupValue: obesidadSelecionado,
                                    onChanged: (value) {
                                      setState(() {
                                        obesidadSelecionado = value.toString();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            //pregunta 3
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  '¿Tienes una condicion medica preexistente que pueda afectar tu peso o salud general?',
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
                                      width: 170,
                                      child: RadioListTile(
                                        title: Text('Diabetes'),
                                        value: 'opcion1',
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
                                      width: 200,
                                      child: RadioListTile(
                                        title: Text('Hipertension'),
                                        value: 'opcion2',
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
                                      width: 165,
                                      child: RadioListTile(
                                        title: Text('Tiroides'),
                                        value: 'opcion3',
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
                                      width: 160,
                                      child: RadioListTile(
                                        title: Text('Ninguna'),
                                        value: 'opcion4',
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
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/registre3');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  child: const Text('Siguiente',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
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
