import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.orange,
          actions: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Text('Nombre del usuario',
                          style: TextStyle(fontSize: 20))),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text('Cerrar sesión'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Restablecer contraseña',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Reserva'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.pushNamed(context, '/reserva');
                    },
                  ),
                  ListTile(
                    title: Text('Viajes'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.pushNamed(context, '/viajes');
                    },
                  ),
                  ListTile(
                    title: Text('Tarjetas '),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Aviso'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                  'Esta sección se encuentra deshabilitada en estos momentos.'),
                              FlutterLogo(size: 50),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Aceptar'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Tracker'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Aviso'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                  'Esta sección se encuentra deshabilitada en estos momentos.'),
                              FlutterLogo(size: 50),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Aceptar'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
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
        ));
  }
}
