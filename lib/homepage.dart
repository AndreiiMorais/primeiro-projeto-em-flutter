import 'package:flutter/material.dart';

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
    return Scaffold(
      //scaffold é um widget que tem toda a parte visual "meio pronta"
      appBar: AppBar(
        title: Center(
          child: Text('Home Page'),
        ),
      ),
      
      body: Container(
        //cria um quadrado preto de tamanho definido abaixo
        height: 200,
        width: 200,
        color: Colors.black,
        child: Align(
          //se tentar criar outro container nao funciona pois substitiu a ordem do container de cima
          //para isso se cria o alignment que ele faz o alinhamento e o multi render
          alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box_outlined),
        onPressed: () {setState(() {
              counter++;
            });},
      ),
    );
  }
}
