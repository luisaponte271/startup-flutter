import 'package:flutter/services.dart';
//llamando a los servicios de chorme
import 'package:flutter/material.dart';
import 'package:app_kediko_1/screens/home/home.dart';
//llamando a home.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //ocultar la barra de estado
      title: 'Kediko App',
      home: HomePage(),
    );
  }
}
