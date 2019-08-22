import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'homepage.dart';

class TelaCadastroEmpreendimento extends StatelessWidget {
  final _cnpjController = TextEditingController();
  final _nomeController = TextEditingController();
  final _tipologiaController = TextEditingController();
  final _mapaController = TextEditingController();
  Future<bool> adicionarLogin(
      int vendido, String nome, String tipologia, int cnpj, String mapa) async {
    final Map<String, dynamic> dadosLogin = {
      'vendido': vendido,
      'nome': nome,
      'tipologia': tipologia,
      'cnpj': cnpj,
      'mapa': mapa,
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

  OutlineInputBorder oiBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: BorderSide(
      width: 3.0,
      color: Color(0xFF5a9500),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171B21),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 45.0),
              Text(
                "Dados do Empreendimento",
                style: TextStyle(
                    fontSize: 20.0, color: Color(0xFF8cc63f)),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                child: TextFormField(controller: _cnpjController,
                  decoration: InputDecoration(
                    hintText: "CNPJ:",
                    hintStyle: TextStyle(color: Colors.white),
                    border: oiBorder,
                    enabledBorder: oiBorder,
                    focusedBorder: oiBorder,
                    fillColor: Color(0xff5a9500),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                child: TextFormField(controller: _nomeController,
                  decoration: InputDecoration(
                    hintText: "Nome:",
                    hintStyle: TextStyle(color: Colors.white),
                    border: oiBorder,
                    enabledBorder: oiBorder,
                    focusedBorder: oiBorder,
                    fillColor: Color(0xff5a9500),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                child: TextFormField(controller: _tipologiaController,
                  decoration: InputDecoration(
                    hintText: "Tipologia:",
                    hintStyle: TextStyle(color: Colors.white),
                    border: oiBorder,
                    enabledBorder: oiBorder,
                    focusedBorder: oiBorder,
                    fillColor: Color(0xff5a9500),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                child: TextFormField(controller: _mapaController,
                  decoration: InputDecoration(
                    hintText: "Mapa:",
                    hintStyle: TextStyle(color: Colors.white),
                    border: oiBorder,
                    enabledBorder: oiBorder,
                    focusedBorder: oiBorder,
                    fillColor: Color(0xff5a9500),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 60.0, horizontal: 30),
                child: RaisedButton(
                  child: Text("Registrar-se",
                    style: TextStyle(fontSize: 20.5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  color: Color(0xFF8cc63f),
                  textColor: Color(0xFFffffff),
                  onPressed: () {

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                      return HomePage();
                    }));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
