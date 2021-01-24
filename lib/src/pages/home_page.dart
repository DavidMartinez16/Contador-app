import 'package:flutter/material.dart';


class HomePage  extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25);

  final contador = 10;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de Clicks: ', style: estiloTexto),
            Text('$contador' , style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add),
        onPressed: () {
          print('Hola Mundo');
        },  
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }



}