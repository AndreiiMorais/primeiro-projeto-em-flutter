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
    return Container(
      child: Center(
          child: GestureDetector(
            //detecta clicks
        child: Text('Contador $counter'),
        onTap: () {
          //no click altera o estado chamando todo o construtor novamente.
          setState(() {
            counter++;
          });
        },
      ),
      ),
    );
  }
}
