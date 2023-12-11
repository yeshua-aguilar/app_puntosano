import 'package:flutter/material.dart';
import 'package:app_puntosano/estadisticas.dart';
import 'package:app_puntosano/comida.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Estadistica(), // Reemplaza con tu pantalla de estadísticas
          Comida(), // Reemplaza con tu pantalla de comida
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.purple,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            label: 'Estadisticas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Comida',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_handball),
            label: 'Actividades',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
