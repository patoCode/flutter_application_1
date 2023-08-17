import 'package:flutter/material.dart';

import 'presentation/screens/counter_functions_screeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // PARA QUITAR EL BANER DE MODO DEV EN LA APP FLUTTER
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // colorSchemeSeed: Colors.brown[800],
      ),
      home: const CounterFuntionsScreen(),
    );
  }
}
