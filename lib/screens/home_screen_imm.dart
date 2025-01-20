import 'package:fl_examen_imm/screens/screens_imm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyJet'),
      ),
      
      body: SizedBox.expand(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/easyjet.png'),height: 50,),
            Text(
              'Inicia sesión o regístrate para continuar',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su email';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su contraseña';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListViewScreen()),
                      );
                    },
                    child: Text('Iniciar Sesión'),
                  ),
                ],
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/remember');
              },
              child: Text('¿Olvidaste tus datos?'),
            ),
          ],
        ),
      ),
    );
  }
}