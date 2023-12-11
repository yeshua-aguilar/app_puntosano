import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ComidaApp extends StatefulWidget {
  @override
  _ComidaAppState createState() => _ComidaAppState();
}

class _ComidaAppState extends State<ComidaApp> {
  double progressValue = 0.0;
  List<bool> completedTasks = [false, false, false];

  List<String> listaTareas1 = [
    'Tostadas integrales(2 rebanadas)',
    'Aguacate en rodajas: 1/2',
    'Huevo cocido o pochaco: 2 unidades',
    'fresas o arandanos: 1 taza'
  ];

  List<String> listaTareas2 = [
    'Pechuga de pollo a la plancha 150g',
    'Quinoa cocida 185g',
    'Brocoli al vapor: 1 taza',
    'Zanahorias asadas 150g',
    'Aceite de oliva para aderezo: 1 cucharada'
  ];

  List<String> listaTareas3 = [
    'Pescado al horno (merluza) 150g',
    'Esparragos a la parrilla: 1 taza',
    'Calabacin y champiñones salteados: 1 taza',
    'Quinoa cocida (1/2 Taza): 92.5 g'
  ];

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void updateProgress() {
    int completedCount = completedTasks.where((completed) => completed).length;
    progressValue = completedCount / completedTasks.length;
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es');
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd MMMM', 'es').format(now);
    return MaterialApp(
      home: Scaffold(
        //barra de arriba
        appBar: AppBar(
          title: Text(
            'Comida',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: Container(),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formattedDate,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                height: 20,
                child: Stack(
                  children: [
                    LinearProgressIndicator(
                      value: progressValue,
                      backgroundColor: Color.fromARGB(255, 201, 201, 201),
                      minHeight: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: progressValue,
                        child: Container(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${(progressValue * 100).toStringAsFixed(0)}%',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 400,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Desayuno'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            listaTareas1.map((tarea) => Text(tarea)).toList(),
                      ),
                      trailing: Checkbox(
                        value: completedTasks[0],
                        onChanged: (value) {
                          setState(() {
                            completedTasks[0] = value!;
                            updateProgress();
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Almuerzo'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            listaTareas2.map((tarea) => Text(tarea)).toList(),
                      ),
                      trailing: Checkbox(
                        value: completedTasks[1],
                        onChanged: (value) {
                          setState(() {
                            completedTasks[1] = value!;
                            updateProgress();
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Almuerzo'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            listaTareas3.map((tarea) => Text(tarea)).toList(),
                      ),
                      trailing: Checkbox(
                        value: completedTasks[2],
                        onChanged: (value) {
                          setState(() {
                            completedTasks[2] = value!;
                            updateProgress();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
