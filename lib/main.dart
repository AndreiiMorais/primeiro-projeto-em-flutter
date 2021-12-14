import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  //runApp serve para chamar widgets, container é um dos widgets padroes do flutter
  runApp(const AppWidget(
    title: 'Andrei',
  ));
  //dessa forma o runapp esta apenas chamando a outra classe
}

class AppWidget extends StatelessWidget {
  //stateless é um widget q nao se altera, nao tem animaçao, imutavel, sem estado
  final String title;

  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //material app serve pra dar uma cara de app no projeto.
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: GestureDetector(
            //detecta clicks
        child: Text('Contador $counter'),
        onTap: () {
          //no click altera o estado chamando todo o construtor novamente.
          setState(() {
            counter++;
          });
        },
      ),
      ),
    );
  }
}
