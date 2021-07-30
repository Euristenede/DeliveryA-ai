import 'package:flutter/material.dart';
import 'package:appacai/pedidos/acompanhamento_pedido.dart';
import 'package:appacai/pedidos/calda_fruta_pedido.dart';

class Adicionais extends StatefulWidget {
  @override
  _AdicionaisState createState() => _AdicionaisState();
}

class _AdicionaisState extends State<Adicionais> {
  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  int _count = 0,
      _countAmendoin = 0,
      _countChocobol = 0,
      _countLeitePo = 0,
      _countGranola = 0,
      _countFarinhaLactea = 0,
      _countGranulado = 0,
      _countAveia = 0,
      _countPacoca = 0,
      _countFruitRings = 0,
      _countSucrilhos = 0,
      _countFlocoArroz = 0,
      _countFlocoTapioca = 0;

  _incrementar(String nome) {
    if (nome == "amendoin" && _countAmendoin == 0 && _count < 3) {
      setState(() {
        _countAmendoin = _countAmendoin + 1;
        _count = _count + 1;
      });
    } else if (nome == "chocobol" && _countChocobol == 0 && _count < 3) {
      setState(() {
        _countChocobol = _countChocobol + 1;
        _count = _count + 1;
      });
    }
  }

  _decrementar(String nome) {
    if (nome == "amendoin" && _countAmendoin == 1) {
      setState(() {
        _countAmendoin = _countAmendoin - 1;
        _count = _count - 1;
      });
    }
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
                  padding: EdgeInsets.only(top: 20, bottom: 50),
                  child: Column(
                    children: [
                      Text(
                        "Escolha os adicionais",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("amendoin");
                          },
                        ),
                        Text('$_countAmendoin'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("amendoin");
                          },
                        ),
                        Text(
                          "  TORTUGUITA",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("chocobol");
                          },
                        ),
                        Text('$_countChocobol'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("chocobol");
                          },
                        ),
                        Text(
                          "  MINI OREO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("leitepo");
                          },
                        ),
                        Text('$_countLeitePo'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("leitepo");
                          },
                        ),
                        Text(
                          "  NUTELLA 60 G",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("granola");
                          },
                        ),
                        Text('$_countGranola'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("granola");
                          },
                        ),
                        Text(
                          "  GRANULADO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("farinhalactea");
                          },
                        ),
                        Text('$_countFarinhaLactea'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("farinhalactea");
                          },
                        ),
                        Text(
                          "  COCO RALADO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("granulado");
                          },
                        ),
                        Text('$_countGranulado'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("granulado");
                          },
                        ),
                        Text(
                          "  BOLA DE SORVETE",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("aveia");
                          },
                        ),
                        Text('$_countAveia'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("aveia");
                          },
                        ),
                        Text(
                          "  CHOCO POWER BALL",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("pacoca");
                          },
                        ),
                        Text('$_countPacoca'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("pacoca");
                          },
                        ),
                        Text(
                          "  OVOMALTINE",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("fruitrings");
                          },
                        ),
                        Text('$_countFruitRings'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("fruitrings");
                          },
                        ),
                        Text(
                          "  CASTANHA DO PARÁ",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("sucrilhos");
                          },
                        ),
                        Text('$_countSucrilhos'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("sucrilhos");
                          },
                        ),
                        Text(
                          "  JUJUBA",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("flocosarroz");
                          },
                        ),
                        Text('$_countFlocoArroz'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("flocosarroz");
                          },
                        ),
                        Text(
                          "  BIZ",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("flocostapioca");
                          },
                        ),
                        Text('$_countFlocoTapioca'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("flocostapioca");
                          },
                        ),
                        Text(
                          "  CONFETE DISQUETE",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("flocostapioca");
                          },
                        ),
                        Text('$_countFlocoTapioca'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("flocostapioca");
                          },
                        ),
                        Text(
                          "  CANUDO DE BISCOITO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                    ],
                  )),
            ],
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
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AcompanhamentoEntrega())),
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
                    MaterialPageRoute(builder: (context) => CaldaFruta())),
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
