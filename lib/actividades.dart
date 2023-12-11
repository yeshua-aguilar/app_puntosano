import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ActividadesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double progressValue = 0.5;
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
                width:
                    300, // Ajusta el ancho del contenedor según tus necesidades
                height:
                    20, // Ajusta la altura del contenedor según tus necesidades
                child: Stack(
                  children: [
                    LinearProgressIndicator(
                      value: progressValue,
                      backgroundColor: Color.fromARGB(255, 201, 201,
                          201), // Cambia el color de fondo de la barra de progreso
                      minHeight: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: progressValue,
                        child: Container(
                          color: Colors
                              .blue, // Cambia el color de la parte llena de la barra de progreso
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${(progressValue * 100).toStringAsFixed(0)}%', // Muestra el porcentaje basado en el valor actual
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
