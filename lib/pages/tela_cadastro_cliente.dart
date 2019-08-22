import 'package:flutter/material.dart';
import 'package:tlpa/pages/homepage.dart';



class TelaCadastroCliente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171B21),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "Dados do Cliente",
                style: TextStyle(
                  color: Color(0xFF8cc63f),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      hintText: "Qual seu nome",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "Nome",
                      labelStyle: TextStyle(
                        color: Color(0xFFffffff),
                      ),
                      fillColor: Color(0xff05a9500)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      hintText: "Digite seu CPF",
                      hintStyle: TextStyle(color: Colors.white),
                      labelText: "CPF",
                      labelStyle: TextStyle(
                        color: Color(0xFFffffff),
                      ),
                      fillColor: Color(0xff05a9500)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Digite seu RG",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "RG",
                    labelStyle: TextStyle(
                      color: Color(0xFFffffff),
                    ),
                    fillColor: Color(0xff5a9500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Qual seu Telefone",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Telefone",
                    labelStyle: TextStyle(
                      color: Color(0xFFffffff),
                    ),
                    fillColor: Color(0xff5a9500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Número do seu Celular",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Celular",
                    labelStyle: TextStyle(
                      color: Color(0xFFffffff),
                    ),
                    fillColor: Color(0xff5a9500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Qual seu Email",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Color(0xFFffffff),
                    ),
                    fillColor: Color(0xff5a9500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    filled: true,
                    hintText: "Qual seu Estado",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: "Estado Civil",
                    labelStyle: TextStyle(
                      color: Color(0xFFffffff),
                    ),
                    fillColor: Color(0xff5a9500),
                  ),
                ),
              ),
              RaisedButton(
                child: Text(
                  "Registrar",

                  style: TextStyle(
                    fontSize: 20.5,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 80),
                color: Color(0xFF8cc63f),
                textColor: Color(0xFFffffff),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return HomePage();
                      },
                    ),
                  );
                },
//                padding: EdgeInsets.symmetric(horizontal: 100.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
