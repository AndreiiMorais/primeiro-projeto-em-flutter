import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              //Image.asset('assets/images/skull.png'),
              //para declarar um asset, precisa ser referenciado la no pubspec.yaml
              Card(
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.white,
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.white,
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: 'Senha', border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (email == 'andrei.morais@outlook.com' &&
                      password == '123') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //o scaffold permite dar scroll naa tela para ver o botao quando o teclado aparece
        body: Stack(
      //o stack empilha todos os widgets q for colocado no children em ordem
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            )),
        Container(
          //esse container foi somente para criar uma mascara mais escura
          color: Colors.black.withOpacity(0.1),
        ),
        _body(),
      ],
    ));
  }
}
