import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ActividadesApp extends StatefulWidget {
  @override
  _ActividadesAppState createState() => _ActividadesAppState();
}

class _ActividadesAppState extends State<ActividadesApp> {
  double progressValue = 0.0;
  List<bool> completedTasks = [false, false, false];

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
                width: 300,
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Tarea 1'),
                      subtitle: Text('Esta es la descripción de la tarea 1'),
                      trailing: Checkbox(
                        value: completedTasks[0]!,
                        onChanged: (value) {
                          setState(() {
                            completedTasks[0] = value!;
                            updateProgress();
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Tarea 2'),
                      subtitle: Text('Esta es la descripción de la tarea 2'),
                      trailing: Checkbox(
                        value: completedTasks[1]!,
                        onChanged: (value) {
                          setState(() {
                            completedTasks[1] = value!;
                            updateProgress();
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: Text('Tarea 3'),
                      subtitle: Text('Esta es la descripción de la tarea 3'),
                      trailing: Checkbox(
                        value: completedTasks[2]!,
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
