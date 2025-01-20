import 'package:fl_examen_imm/screens/list_view_screen_imm.dart';
import 'package:flutter/material.dart';

class ReservaScreen extends StatelessWidget {
  const ReservaScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListViewScreen()),
            );
          },
        ),
        title: const Text('Reservar viaje'),
      ),
      body: Center(
                heightFactor: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 130,
        
              backgroundImage: AssetImage('assets/avion.jpg'),
            ),
            const SizedBox(height: 20),
            const Text('No tienes reservas'),
            const SizedBox(height: 10),
            const Text('¿Tienes un número de referencia? Añade tu reserva ahora.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Añadir reserva'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  currentIndex: 1,
  onTap: (index) {},
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.airplane_ticket),
      label: 'Reserva',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.backpack),
      label: 'Viajes',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.card_giftcard),
      label: 'Tarjetas',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.airplanemode_active_sharp),
      label: 'Tracker',
    ),
  ],
)
    );
  }
}