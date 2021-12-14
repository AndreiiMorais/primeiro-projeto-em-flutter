import 'package:flutter/material.dart';

import 'homepage.dart';

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