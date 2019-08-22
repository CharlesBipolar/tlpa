import 'package:flutter/material.dart';

import 'homepage.dart';

class TelaCadastroLote extends StatelessWidget {
  final _tamanhoController = TextEditingController();
  final _quadraController = TextEditingController();
  final _loteController = TextEditingController();
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
                    fontSize: 20.0, color: Color(0xFF8cc63f)),
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
                  padding: EdgeInsets.symmetric(horizontal: 107.5),
                  color: Color(0xFF8cc63f),
                  textColor: Color(0xFFffffff),
                  child: Text("Registrar",
                    style: TextStyle(fontSize: 20.5),
                  ),
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
