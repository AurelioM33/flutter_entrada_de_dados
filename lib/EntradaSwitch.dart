import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de dados'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
                activeColor: Colors.green,
                secondary: Icon(Icons.add_box),
                title: Text("Receber notificação?"),
                value: _escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  if (_escolhaUsuario) {
                    print("escolha: ativar notificação");
                  } else {
                    print("escolha: NÃO ativar notificação");
                  }
                  ;

                  //print("Resultado" + _escolhaUsuario.toString());
                })

            /*Switch(
                value: _escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            Text("Receber notificação?")*/
          ],
        ),
      ),
    );
  }
}
