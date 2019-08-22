import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tlpa/pages/tela_login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext content) {
            return TelaLogin();
          })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 186, 92),
              gradient: LinearGradient(
                colors: [
                  Color(0xFF061647),
                  //Color.fromARGB(255, 255, 255, 255),
                  Color(0xFF171B21),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(child: Container(child: Image.asset("assets/ponto_alto_logo.png"))),
              SizedBox(height: 20.0),
            ],
          )
        ],
      ),
    );
    ;
  }
}
