import 'package:flutter/material.dart';

class LoginTinder extends StatefulWidget {
  const LoginTinder({Key? key}) : super(key: key);

  @override
  _LoginTinderState createState() => _LoginTinderState();
}

class _LoginTinderState extends State<LoginTinder> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/tinder.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text('Location changer'),
                Text('Plugin app for tinder'),
                FloatingActionButton(
                  clipBehavior: Clip.hardEdge,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
