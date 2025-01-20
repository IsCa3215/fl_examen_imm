import 'package:flutter/material.dart';

class ViajesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/easyjet.png', height: 20),
            automaticallyImplyLeading: false,
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Colors.grey,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: 190,
                    child: Column(
                      children: [
                        ColoredBox(color: Colors.white),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 110,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://www.race.es/revista-autoclub/wp-content/uploads/sites/4/2022/03/alquila-tu-coche-ahora-y-disfruta-del-verano-2.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text('Alquila un coche'),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 150,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/e5/c1/5b/e5c15bec3533133ff1fb0981391e5b99.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text('Reserva con musement'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Column(
                      children: [
                        Text('TOP DESTINOS',
                            style: TextStyle(
                                fontSize: 20, backgroundColor: Colors.grey)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Column(
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      height: 150,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://wallpaperaccess.com/full/1192224.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text('Paris'),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 150,
                                      width: double.infinity,
                                      child: Image.network(
                                        'https://live.staticflickr.com/3122/2303956150_4c8da6c8d7_c.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text('Ginebra'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
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
