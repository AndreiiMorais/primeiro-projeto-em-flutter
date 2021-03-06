import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_controller.dart';
import 'package:primeiro_projeto/login_page.dart';
import 'package:primeiro_projeto/login_tinder.dart';

import 'homepage.dart';

class AppWidget extends StatelessWidget {
  //stateless é um widget q nao se altera, nao tem animaçao, imutavel, sem estado

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) => MaterialApp(
          // o sinal => substitui o return
          //material app serve pra dar uma cara de app no projeto.
          theme: ThemeData(
              primarySwatch: Colors.red,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/tinder': (context) => LoginTinder(),
          },
        ),
      );
}
