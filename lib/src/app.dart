
// Importar paquetes
import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';

//import 'package:contador/src/pages/home_page.dart';

// Crear un widget

class MyApp extends StatelessWidget{

  //Definir metodo build
  @override
  Widget build( context  ) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child:  HomePage(),
        child: ContadorPage(),
      )
      
    );

  }


}