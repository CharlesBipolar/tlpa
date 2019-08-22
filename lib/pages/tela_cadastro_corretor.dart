import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaCadastroCorretor extends StatelessWidget {
  final _NomeCompletoController = TextEditingController();
  final _cpfController = TextEditingController();
  final _rgController = TextEditingController();
  final _creciController = TextEditingController();
  final _imobiliariaController = TextEditingController();
  final _celularController = TextEditingController();
  Future<bool> adicionarCorretor(
      String nome, String cpf, String creci, String celular,
      String imobiliaria, String rg, int status ) async {
    final Map<String, dynamic> dadosLogin = {
      'nome': nome,
      'cpf': cpf,
      'creci': creci,
      'celular': celular,
      'imobiliaria': imobiliaria,
      'rg': rg,
      'status': status,
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
      color: Color(0xff5a9500),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171B21),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          Text(
            "Informe seus dados",
            style: TextStyle(fontSize: 20.0, color: Colors.green),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30),
            child: TextFormField(
              controller: _NomeCompletoController,
              decoration: InputDecoration(
                hintText: "Nome Completo",
                hintStyle: TextStyle(color: Color(0xffffffff)),
                border: oiBorder,
                enabledBorder: oiBorder,
                focusedBorder: oiBorder,
                fillColor: Color(0xff5a9500),
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30),
            child: TextFormField(
              controller: _cpfController,
              decoration: InputDecoration(
                hintText: "CPF",
                hintStyle: TextStyle(color: Color(0xffffffff)),
                border: oiBorder,
                enabledBorder: oiBorder,
                focusedBorder: oiBorder,
                fillColor: Color(0xff5a9500),
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30),
            child: TextFormField(
              controller: _rgController,
              decoration: InputDecoration(
                hintText: "RG",
                hintStyle: TextStyle(color: Color(0xffffffff)),
                border: oiBorder,
                enabledBorder: oiBorder,
                focusedBorder: oiBorder,
                fillColor: Color(0xff5a9500),
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30),
            child: TextFormField(
              controller: _creciController,
              decoration: InputDecoration(
                hintText: "CRECI",
                hintStyle: TextStyle(color: Color(0xffffffff)),
                border: oiBorder,
                enabledBorder: oiBorder,
                focusedBorder: oiBorder,
                fillColor: Color(0xff5a9500),
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30),
            child: TextFormField(
              controller: _imobiliariaController,
              decoration: InputDecoration(
                hintText: "Imobiliária",
                hintStyle: TextStyle(color: Color(0xffffffff)),
                border: oiBorder,
                enabledBorder: oiBorder,
                focusedBorder: oiBorder,
                fillColor: Color(0xff5a9500),
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30),
            child: RaisedButton(
              color: Color(0xff5a9500) ,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Registrar-se",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/homepage");
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 30),
            child: TextFormField(
              controller: _celularController,
              decoration: InputDecoration(
                hintText: "Celular",
                hintStyle: TextStyle(color: Color(0xffffffff)),
                border: oiBorder,
                enabledBorder: oiBorder,
                focusedBorder: oiBorder,
                fillColor: Color(0xff5a9500),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
