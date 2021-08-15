import 'package:flutter/material.dart';
import 'package:appacai/pedidos/resumo_pedido.dart';
import 'package:appacai/pedidos/calda_fruta_pedido.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfirmaPedido extends StatefulWidget {
  @override
  _ConfirmaPedidoState createState() => _ConfirmaPedidoState();
}

class _ConfirmaPedidoState extends State<ConfirmaPedido> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  String _textoPedido = "";
  List<String> _acompanhamento = [];
  List<String> _adicionais = [];
  List<String> _calda = [];
  List<String> _frutas = [];

  _recuperarPedido() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoPedido = prefs.getString("pedido")!;
    });
  }

  _recuperarAcompanhamento() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var adicionais = prefs.getStringList("adicionais");
    setState(() {
      _adicionais = adicionais!;
    });
  }

  _recuperarAdicionais() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var acompanhamento = prefs.getStringList("acompanhamento");
    setState(() {
      _acompanhamento = acompanhamento!;
    });
  }

  _recuperarCalda() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var calda = prefs.getStringList("calda");
    setState(() {
      _calda = calda!;
    });
  }

  _recuperarFrutas() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var frutas = prefs.getStringList("fruta");
    setState(() {
      _frutas = frutas!;
    });
  }

  @override
  Widget build(BuildContext context) {
    _recuperarPedido();
    _recuperarAcompanhamento();
    _recuperarAdicionais();
    _recuperarCalda();
    _recuperarFrutas();
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
                        "Confirmar Pedido",
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
            child: Text(
              "Detalhes do pedido",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 10),
            child: Text(
              " - " + _textoPedido,
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 10),
            child: Text(
              "Acompanhamento Gratis",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          for (var i in _acompanhamento)
            Container(
              padding: EdgeInsets.only(left: 60, right: 10),
              child: Text(
                " - " + i,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 10),
            child: Text(
              "Adicionais",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          for (var i in _adicionais)
            Container(
              padding: EdgeInsets.only(left: 60, right: 10),
              child: Text(
                " - " + i,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 10),
            child: Text(
              "Calda",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          for (var i in _calda)
            Container(
              padding: EdgeInsets.only(left: 60, right: 10),
              child: Text(
                " - " + i,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          Container(
            padding: EdgeInsets.only(left: 40, right: 10),
            child: Text(
              "Frutas",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          for (var i in _frutas)
            Container(
              padding: EdgeInsets.only(left: 60, right: 10),
              child: Text(
                " - " + i,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
                    MaterialPageRoute(builder: (context) => CaldaFruta())),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "Anterior",
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
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResumoPedido())),
                child: Row(
                  children: [
                    Text(
                      "Próximo",
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
