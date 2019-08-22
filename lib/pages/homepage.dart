import 'package:flutter/material.dart';
import 'package:tlpa/pages/tela_cadastro_cliente.dart';
import 'package:tlpa/pages/tela_cadastro_empreedimento.dart';
import 'package:tlpa/pages/tela_cadastro_lote.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TelaCadastroCliente();
                },
              ));
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TelaCadastroEmpreendimento();
                },
              ));
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return TelaCadastroLote();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
