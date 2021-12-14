import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_controller.dart';

import 'homepage.dart';
import 'login_page.dart';

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
          routes: {
            '/':(context) => LoginPage(),
            '/home':(context) => HomePage(),
          },
        ),
      );
}
