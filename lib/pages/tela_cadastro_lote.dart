import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'homepage.dart';

class TelaCadastroLote extends StatelessWidget {
  final _tamanhoController = TextEditingController();
  final _quadraController = TextEditingController();
  final _loteController = TextEditingController();
  Future<bool> adicionarLote(
      int tamanho, int id_corretor, int id_cliente, String quadra, int lote, int id_empreendimento) async {
    final Map<String, dynamic> dadosLogin = {
      'tamanho': tamanho,
      'id_corretor': id_corretor,
      'id_cliente': id_cliente,
      'quadra': quadra,
      'lote': lote,
      'id_empreendimento': id_empreendimento,
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
                "Dados da Unidade Habitacional ",
                style: TextStyle(
                    fontSize: 20.0, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 50.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
                child: TextFormField(controller: _tamanhoController,
                  decoration: InputDecoration(
                    hintText: "Tamanho:",
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
                child: TextFormField(controller: _quadraController,
                  decoration: InputDecoration(
                    hintText: "Quadra:",
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
                child: TextFormField(controller: _loteController,
                  decoration: InputDecoration(
                    hintText: "Lote:",
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
                  child: Text("Registrar"),
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
