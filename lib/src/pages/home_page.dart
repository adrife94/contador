import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  final TextStyle estiloTexto = TextStyle(fontSize: 30);

  int conteo = 10;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("titulo"),
       centerTitle: true,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("Numero de clicks:", style: estiloTexto),
           Text('$conteo', style: estiloTexto),
         ],
       )
     ),
    // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton:  FloatingActionButton(

       child: Icon(Icons.add_circle_outline_sharp),
       onPressed: () {
        print(conteo);
        conteo++;
       },
     ),


   );
  }

}

