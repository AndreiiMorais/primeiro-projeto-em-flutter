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
      
      body: Center(
        child: GestureDetector(
          //detecta clicks
          child: Text('Contador $counter', style: TextStyle(fontSize: 50)),
          onTap: () {},
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
