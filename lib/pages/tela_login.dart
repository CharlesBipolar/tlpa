import 'package:flutter/material.dart';
import 'package:tlpa/pages/homepage.dart';
import 'package:tlpa/pages/tela_cadastro_corretor.dart';
import 'package:http/http.dart' as http;



class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  OutlineInputBorder oiBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: BorderSide(
      width: 2.0,
      color: Color(0xFF5a9500),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                  child: Image.asset(
                    "assets/ponto_alto_logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "CRECI",
                    prefixIcon: Icon(
                      Icons.assignment_ind, color: Color(0xFFffffff),),
                    hintStyle: TextStyle(
                      color: Color(0xFFffffff),
                    ),
                    enabledBorder: oiBorder,
                    focusedBorder: oiBorder,
                  ),
                  style: TextStyle(color: Color(0xFFffffff)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "senha",
                    prefixIcon: Icon(Icons.https, color: Color(0xFFffffff),),
                    hintStyle: TextStyle(color: Color(0xFFffffff)),
                    enabledBorder: oiBorder,
                    focusedBorder: oiBorder,
                  ),
                  style: TextStyle(color: Color(0xFFffffff)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return HomePage();
                        },),);
                  },
                  child: Text(
                    "Logar-se",
                    style: TextStyle(fontSize: 20.5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 126.5),
                  color: Color(0xFF8cc63f),
                  textColor: Color(0xFFffffff),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return TelaCadastroCorretor();
                        },),);
                  },
                  child: Text(
                    "Registrar-se",
                    style: TextStyle(fontSize: 20.5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 107.5),
                  color: Color(0xFF8cc63f),
                  textColor: Color(0xFFffffff),
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xFF171B21),
    );
  }
}
