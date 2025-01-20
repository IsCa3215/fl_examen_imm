// Main entry point for the app
import 'package:flutter/material.dart';
import 'screens/home_screen_imm.dart';
import 'screens/list_view_screen_imm.dart';
import 'screens/remember_screen_imm.dart';
import 'screens/reserva_screen_imm.dart';
import 'screens/viajes_screen_imm.dart';
import 'themes/app_theme_imm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyJet',
      theme: AppTheme.lightTheme,
      routes: {
        '/': (context) => HomeScreen(),
        '/remember': (context) => RememberScreen(),
        '/listview': (context) => ListViewScreen(),
        '/reserva': (context) => ReservaScreen(),
        '/viajes': (context) => ViajesScreen(),
      },
    );
  }
}