import 'package:flutter/material.dart';
import 'package:appacai/pedidos/resumo_pedido.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Observacao extends StatefulWidget {
  @override
  _ObservacaoState createState() => _ObservacaoState();
}

class _ObservacaoState extends State<Observacao> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  final TextStyle inputStyle =
      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  final campoObservacao = TextEditingController();

  _salvarObservacao(String observacao) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("observacao", observacao);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Point do Açaí",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        "Observação",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    controller: campoObservacao,
                    style: inputStyle,
                    decoration: const InputDecoration(
                        hintText: 'Insira uma Observação',
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: flatButtonStyle,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResumoPedido())),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "Voltar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
              TextButton(
                style: flatButtonStyle,
                onPressed: () async {
                  await _salvarObservacao(campoObservacao.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResumoPedido()));
                },
                child: Row(
                  children: [
                    Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
