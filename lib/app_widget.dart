import 'package:flutter/material.dart';

import 'homepage.dart';

class AppWidget extends StatelessWidget {
  //stateless é um widget q nao se altera, nao tem animaçao, imutavel, sem estado
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //material app serve pra dar uma cara de app no projeto.
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}