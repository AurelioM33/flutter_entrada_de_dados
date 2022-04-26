// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 25,
      color: Colors.green,
    );
    var inputDecoration = InputDecoration(
      labelText: "Digite um valor",
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: inputDecoration,
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforced: false,

              style: TextStyle(
                fontSize: 50,
                color: Colors.green,
              ),
              //obscureText: true,
              /*
              onChanged: (String texto) {
                print("valor digitado" + texto);
              },*/
              onSubmitted: (String texto) {
                print("valor digitado" + texto);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightGreen,
            onPressed: () {
              print("valor digitado" + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
