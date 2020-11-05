import 'package:flutter/material.dart';

class contadorPage extends StatefulWidget {
  @override
 createState() {
    createState() => _contadorPageState();
  }

  

}
class _contadorPageState extends State<contadorPage> {

  final TextStyle _estiloTexto = TextStyle(fontSize: 30);
  int _conteo = 10;

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
              Text("Numero de clicks:", style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto),
            ],
          )
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  _botones()
    );
  }



Widget _botones() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(width: 30.0,),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: resetear,),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: restar,),
      SizedBox(width: 10.0,),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: sumar,)

    ],
  );
}

void sumar()  => setState(() => _conteo++);


void restar() => setState(() =>_conteo--);


void resetear() => setState(() => _conteo=0);

}