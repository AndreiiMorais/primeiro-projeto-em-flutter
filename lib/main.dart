import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  //runApp serve para chamar widgets, container é um dos widgets padroes do flutter
  runApp(AppWidget());
  //dessa forma o runapp esta apenas chamando a outra classe
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        //o center faz a centralização do texto.
        child: Text(
          'Teste',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
