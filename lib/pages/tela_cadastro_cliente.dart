import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'homepage.dart';




class TelaCadastroCliente extends StatelessWidget {
  final _nomecontroller = TextEditingController();
  final _cpfcontroller = TextEditingController();
  final _rgcontroller = TextEditingController();
  final _telefonecontroller = TextEditingController();
  final _celularcontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _estadocivilcontroller = TextEditingController();

  Future<bool> adicionarCliente(
      String nome, String cpf, String rg, String telefone, String celular, String email, String regime_casamento, String parceria_nome,
      String parceria_cpf, String parceria_rg, String parceria_telefone, String parceria_email, String parceria_celular) async {
    final Map<String, dynamic> dadosLogin = {
      'nome': nome,
      'cpf': cpf,
      'rg': rg,
      'telefone': telefone,
      'celular': celular,
      'email': email,
      'regime-casamento': regime_casamento,
      'parceria_nome': parceria_nome,
      'parceria_cpf':parceria_cpf,
      'parceria_rg':parceria_rg,
      'parceria_telefone':parceria_telefone,
      'parceria_email':parceria_email,
      'parceria_celular':parceria_celular,
    };

    try {
      final http.Response response = await http.post(
        'http://www.pontoaltoapi.tk/api/insere-XXXXXXXXXXXX.php',
        body: json.encode(dadosLogin),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded",
        },
      );

      String teste = json.encode(dadosLogin);

      if (response.statusCode != 200 && response.statusCode != 201) {
        return false;
      } else {
        return true;
      }
    } catch (error) {
      return false;
    }
  }


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
                child: TextFormField(controller: _nomecontroller,
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
                  controller: _cpfcontroller,
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
                child: TextFormField(controller: _rgcontroller,
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
                child: TextFormField(controller: _telefonecontroller,
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
                child: TextFormField(controller: _celularcontroller,
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
                child: TextFormField(controller: _emailcontroller,
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
                child: TextFormField(controller: _estadocivilcontroller,
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
