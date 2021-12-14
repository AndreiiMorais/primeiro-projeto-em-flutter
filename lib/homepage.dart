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
        title: Center(
          child: Text('Home Page'),
        ),
      ),

      body: Align(
        alignment: Alignment.topRight,
        child: Switch(
            value: AppController.instance.isDarkTheme,
            onChanged: (value) {
              AppController.instance.changeTheme();
            }),
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
