import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  //runApp serve para chamar widgets, container é um dos widgets padroes do flutter
  runApp(Container(
    child: Text('Teste',
    textDirection: TextDirection.ltr,
    style: TextStyle(color: Colors.white,
    fontSize: 50.0,),
    ),

  ));
  
}
