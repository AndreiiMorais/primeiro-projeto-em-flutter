import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  //runApp serve para chamar widgets, container é um dos widgets padroes do flutter
  runApp(const AppWidget(title: 'Andrei',));
  //dessa forma o runapp esta apenas chamando a outra classe
}

class AppWidget extends StatelessWidget {
  //stateless é um widget q nao se altera, nao tem animaçao, imutavel, sem estado
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        //o center faz a centralização do texto.
        child: Text(
          title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
