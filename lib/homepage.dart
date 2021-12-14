import 'package:flutter/material.dart';
import 'package:primeiro_projeto/app_controller.dart';

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
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),

      body: Container(
        //para fazer alinhamento da coluna é necessario herdar do pai, no caso o container
        width: double.infinity,
        height: double.infinity,
        //a opçao double.infinity coloca o container no tamanho maximo disponivel
        child: ListView(
          //o ListView transforma o em uma lista com scroll.. podendo ser alterado para scroll horizontal com o scrollDirection: Axis.horizontal
          children: [
            Text('Contador: $counter',
                style: TextStyle(fontSize: 40, color: Colors.black)),
            Container(
              //esses containers so servem para dar um espaçamento entre as linhas
              height: 50,
            ),
            CustomSwitch(),
            Container(
              height: 50,
            ),
            Row(
              //row seriam as linhas horizontais.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50, height: 50, color: Colors.black),
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.purple)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box_outlined),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
