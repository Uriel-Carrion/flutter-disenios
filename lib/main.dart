import 'package:flutter/material.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen', //Pantalla de inicio
      //Definición de las rutas en el archivo principal
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (_) => ScrollScreen()
      },
    );
  }
}
