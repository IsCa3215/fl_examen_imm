import 'package:flutter/material.dart';

class RememberScreen extends StatelessWidget {
   
  const RememberScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var values;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Restablecer contraseña'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
              'Introduce tu dirección de correo electrónico y te enviaremos un enlace para restablecer tu contraseña. Recuerda que tendrás que cerrar sesión en tu cuenta en la aplicación e iniciar sesión de nuevo inmediatamente después de haber reseteado tu contraseña.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
              ),
            ),
            
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                return 'Por favor ingrese su email';
                }
                values = value;
                print(value);

                return null;
              },
              
              ),

              
            ), 
            ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      if(values != null){
                      Navigator.pop(context);
                      } else {
                        AlertDialog(title: Text('ingresa un correo'));
                      }
                    },
                    child: Text('Restablecer contraseña'),
                  ),
          ],
        ),
      ),
    );
  }
}