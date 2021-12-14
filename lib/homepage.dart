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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //faz o alinhamento principal no centro
          //crossAxisAlignment: CrossAxisAlignment.end,
          // o cross comentado faz o alinhamento para os lados ou de tamanho
          children: [
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
            CustomSwitch(),
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
