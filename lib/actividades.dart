import 'package:flutter/material.dart';

class Actividades extends StatefulWidget {
  @override
  _ActividadesState createState() => _ActividadesState();
}

class _ActividadesState extends State<Actividades> {
  double progressValue = 0.0;
  List<bool> completedTasks = [false, false, false, false];

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
    return MaterialApp(
      home: Scaffold(
        //barra de arriba
        appBar: AppBar(
          title: Text(
            'Actividades',
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
              Container(
                width: 350,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      10), // Ajusta el radio de las esquinas según tus necesidades
                  child: Image.asset(
                    'assets/img/ejercicio.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Actividades',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dificultad',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Basico',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                      leading: Image.asset('assets/img/flexiones.jpg'),
                      title: Text('Flexiones Normales'),
                      subtitle: Text('5 sets'),
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
                      leading: Image.asset('assets/img/fondo.png'),
                      title: Text('Fondos en Banca'),
                      subtitle: Text('5 sets'),
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
                      leading: Image.asset('assets/img/extensiones.jpg'),
                      title: Text('Extesiones de Triceps'),
                      subtitle: Text('5 sets'),
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
                    ListTile(
                      leading: Image.asset('assets/img/curl.jpg'),
                      title: Text('Curl Predicador'),
                      subtitle: Text('5 sets'),
                      trailing: Checkbox(
                        value: completedTasks[3],
                        onChanged: (value) {
                          setState(() {
                            completedTasks[3] = value!;
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
