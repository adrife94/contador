import 'package:contador/src/pages/contador.page.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // quita el debug que aparece en la parte superior de la derecha del dispositivo
        home: Center(
          child: contadorPage(),
        )
    );
  }

}