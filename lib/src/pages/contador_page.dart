import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State <ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 25, color: Colors.black);
  final _estiloTexto2 = new TextStyle(fontSize: 25, color: Colors.indigo[900]);
  final _estiloTexto3 = new TextStyle(fontSize: 25, color: Colors.orange[900]);
  
  

  int _contador = 0;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Contador Taps'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text('Bienvenido a  App de Contador', style: _estiloTexto3),
            Expanded (child: SizedBox()),
            Text('Número de Taps: ', style: _estiloTexto),
            SizedBox(height: 15.0),
            Text('$_contador' , style: _estiloTexto2),
            SizedBox(height: 350.0),

          ],
        )
      ),
      floatingActionButton:_crearBotones ()
    );
  }


  Widget _crearBotones () {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero,color: Colors.black ), onPressed: _reset , backgroundColor: Colors.tealAccent[700] , splashColor: Colors.blue[900]),
        Expanded (child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove, color: Colors.black ), onPressed: _sustraer , backgroundColor: Colors.red, splashColor: Colors.redAccent[700]),
        SizedBox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.add , color: Colors.black ), onPressed: _sumar , backgroundColor: Colors.lightGreenAccent, splashColor: Colors.lightGreenAccent[400]),
      ],
    );
  
    }
    
    void _sumar() {
      setState(() => _contador++ );
    }

    void _sustraer() {
      setState(() => _contador-- );
    }

    void _reset() {
      setState(() => _contador = 0 );
    }

}