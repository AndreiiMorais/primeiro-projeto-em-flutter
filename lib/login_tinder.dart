import 'package:flutter/material.dart';

class LoginTinder extends StatefulWidget {
  const LoginTinder({Key? key}) : super(key: key);

  @override
  _LoginTinderState createState() => _LoginTinderState();
}

class _LoginTinderState extends State<LoginTinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/tinder.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
              ),
              Text(
                'Location changer',
                style: TextStyle(color: Colors.black),
              ),
              Container(height: 20),
              Text(
                'Plugin app for tinder',
                style: TextStyle(color: Colors.black),
              ),
              Container(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: ElevatedButton(
                  child: Text("Login with Facebook"),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
