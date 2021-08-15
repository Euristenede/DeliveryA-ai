import 'package:flutter/material.dart';
import 'package:appacai/informacoes/funcionamento.dart';
import 'package:appacai/informacoes/locais_entrega.dart';
import 'package:appacai/informacoes/formas_pagamento.dart';
import 'package:appacai/informacoes/taxa_entrega.dart';
import 'package:appacai/pedidos/acompanhamento_pedido.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Catalogo extends StatefulWidget {
  @override
  _CatalogoState createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  var dados;

  String _nomeUsuario = "";

  var chave = Map();

  List list = [];

  _limparLista() {
    setState(() {
      list.clear();
      chave.clear();
    });
  }

  _recuperarProdutos(String produto) async {
    WidgetsFlutterBinding.ensureInitialized();
    Firestore db = Firestore.instance;
    _limparLista();
    db.collection(produto).snapshots().listen((snapshot) {
      for (DocumentSnapshot item in snapshot.documents) {
        setState(() {
          dados = item.data;
          chave[item] = dados;
        });
      }
      setState(() {
        list = chave.values.toList();
      });
    });
  }

  _salvarPedido(String categoria) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("pedido", categoria);
  }

  _salvarPedidoPreco(int preco) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt("pedidoPreco", preco);
  }

  _recuperarUsuario() async {
    final prefs = await SharedPreferences.getInstance();
    var usuario = prefs.getString("nomeUsuario");
    setState(() {
      _nomeUsuario = usuario!;
    });
  }

  @override
  Widget build(BuildContext context) {
    _recuperarUsuario();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Point do Açaí",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(Icons.more_vert),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 20, bottom: 50),
                      child: Column(
                        children: [
                          Text(
                            "Bem Vindo",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _nomeUsuario,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  Funcionamento",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Funcionamento())),
                                    ),
                                  ],
                                )
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  Locais de entrega",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LocalEntrega())),
                                    ),
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  Formas de pagamento",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FormasPagamento())),
                                    ),
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  Taxa de entrega",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TaxaEntrega())),
                                    ),
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "  Status dos Pedidos",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                        icon:
                                            const Icon(Icons.arrow_forward_ios),
                                        onPressed: null),
                                  ],
                                ),
                              ]),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset('assets/images/acai.png',
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.fitWidth),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(top: 75),
                              child: Image.asset(
                                "assets/images/logo.png",
                                height: 110,
                                width: 110,
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                    height: 44.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: () async {
                            await _recuperarProdutos("acaiCopo");
                          },
                          child: Text(
                            "Açaí no copo",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: () async {
                            await _recuperarProdutos("acaiTigela");
                          },
                          child: Text(
                            "Açai na tigela",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: () async {
                            await _recuperarProdutos("acaiCupuacu");
                          },
                          child: Text(
                            "Açaí com cupuaçu",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: () async {
                            await _recuperarProdutos("acaiPrestigo");
                          },
                          child: Text(
                            "Açaí com prestigio",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(4),
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          for (var i in list)
                            GestureDetector(
                              onTap: () async {
                                await _salvarPedido(i['categoria'].toString());
                                await _salvarPedidoPreco(i['precoInt']);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AcompanhamentoEntrega()));
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      color: Colors.purple[50],
                                      elevation: 10,
                                      child: Container(
                                        padding: EdgeInsets.all(4.0),
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Column(
                                              children: <Widget>[
                                                Image.asset(
                                                  "assets/images/acai_copo.png",
                                                  height: 50,
                                                  width: 70,
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Text(
                                                  i['categoria'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  i['descricao'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.purple,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  i['preco'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}
