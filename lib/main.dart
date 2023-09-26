import 'package:flutter/material.dart';
import 'package:hello_word_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

//metodo que contiene la aplicacion
class MyApp extends StatelessWidget {
  //constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //quitar banner de debug
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        home: const CounterSreen());
  }
}
