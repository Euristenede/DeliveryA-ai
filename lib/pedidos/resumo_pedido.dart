import 'package:appacai/pedidos/forma_pagamento.dart';
import 'package:appacai/pedidos/observacao.dart';
import 'package:flutter/material.dart';
import 'package:appacai/apresentacao/home/catalogo.dart';
import 'package:appacai/pedidos/local_entrega.dart';
import 'package:appacai/pedidos/confirmar_pedido.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResumoPedido extends StatefulWidget {
  @override
  _ResumoPedidoState createState() => _ResumoPedidoState();
}

class _ResumoPedidoState extends State<ResumoPedido> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  String _localEntrega = "";
  String _textoPedido = "";
  String _textoObservacao = "";
  String _textoFormaPagamento = "";

  _recuperarLocalEntrega() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var localEntrega = prefs.getString("localEntregaLocal");
    setState(() {
      _localEntrega = localEntrega!;
    });
  }

  _recuperarPedido() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoPedido = prefs.getString("pedido")!;
    });
  }

  _recuperarObservacao() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoObservacao = prefs.getString("observacao")!;
    });
  }

  _recuperarFormaPagamento() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _textoFormaPagamento = prefs.getString("formaPagamento")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    _recuperarLocalEntrega();
    _recuperarPedido();
    _recuperarObservacao();
    _recuperarFormaPagamento();
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
          Container(
              margin: const EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(4),
              width: double.infinity,
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.purple[50],
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Local de Entrega",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LocalEntrega())),
                                child: Row(
                                  children: [
                                    Text("Editar"),
                                    Icon(Icons.create_outlined),
                                  ],
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              _localEntrega,
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.purple[50],
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Pedidos",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _textoPedido,
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ConfirmaPedido())),
                                child: Row(
                                  children: [
                                    Icon(Icons.create_outlined),
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.purple[50],
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Observação",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Observacao())),
                                child: Row(
                                  children: [
                                    Text("Inserir"),
                                  ],
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              _textoObservacao,
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.purple[50],
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Formas de Pagamento",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FormasPagamento())),
                                child: Row(
                                  children: [
                                    Text("Inserir"),
                                  ],
                                ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              _textoFormaPagamento,
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.purple[50],
                    elevation: 10,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Resumo",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Produtos"), Text(r"R$ 54,99")],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Taxa de entrega"), Text(r"R$ 4,00")],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Valor Total"), Text(r"R$ 58,99")],
                        )
                      ],
                    ),
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
                    MaterialPageRoute(builder: (context) => Catalogo())),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "Cardápio",
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
                    MaterialPageRoute(builder: (context) => Catalogo())),
                child: Row(
                  children: [
                    Text(
                      "Finalizar",
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
