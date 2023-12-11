import 'package:flutter/material.dart';

class Comida extends StatelessWidget {
  const Comida({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: <Widget>[
            Text('Tu estadisticas'),
          ],
        ),
      ),
    );
  }
}
