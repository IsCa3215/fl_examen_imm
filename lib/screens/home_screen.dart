import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo_vueling.png',
            height: 100,
          ),
          SizedBox(height: 20),
          Text(
            'Bienvenido a Vueling',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Reserva vuelos y actividades fácilmente',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: Text('REGISTRARME'),
          ),
          ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
            ),
            child: Text('ACCEDER'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/listview');
            },
            child: Text('Seguir sin registro'),
          ),
        ],
      ),
    );
  }
}