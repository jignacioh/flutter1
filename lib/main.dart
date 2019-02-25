import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './product_manager.dart';
import './text_control.dart';
import './pages/home.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      home: HomePage(),
    );

    /*
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App Bar'),
        ),
        body: TextControl(textoInicial: 'Hola Mundo'),
      ),
    );*/
  }
  
}
