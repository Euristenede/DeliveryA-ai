import 'package:flutter/material.dart';
import 'package:appacai/pedidos/acompanhamento_pedido.dart';
import 'package:appacai/pedidos/calda_fruta_pedido.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _countTortuguita = 0,
      _countMiniOreo = 0,
      _countNutella = 0,
      _countCocoRalado = 0,
      _countBolaSorvete = 0,
      _countChocoPowerBall = 0,
      _countOvomaltine = 0,
      _countCastanhaPara = 0,
      _countJujuba = 0,
      _countBiz = 0,
      _countConfeteDisquete = 0,
      _countCanudoBiscoito = 0;

  _verificaSelecionado() async {
    List<String> descricao = [];
    if (_countTortuguita > 0) {
      descricao.add("TORTUGUITA");
    }
    if (_countMiniOreo > 0) {
      descricao.add("MINI OREO");
    }
    if (_countNutella > 0) {
      descricao.add("NUTELLA 60 G");
    }
    if (_countCocoRalado > 0) {
      descricao.add("COCO RALADO");
    }
    if (_countBolaSorvete > 0) {
      descricao.add("BOLA DE SORVETE");
    }
    if (_countChocoPowerBall > 0) {
      descricao.add("CHOCO POWER BALL");
    }
    if (_countOvomaltine > 0) {
      descricao.add("OVOMALTINE");
    }
    if (_countCastanhaPara > 0) {
      descricao.add("CASTANHA DO PARÁ");
    }
    if (_countJujuba > 0) {
      descricao.add("JUJUBA");
    }
    if (_countBiz > 0) {
      descricao.add("BIZ");
    }
    if (_countConfeteDisquete > 0) {
      descricao.add("CONFETE DISQUETE");
    }
    if (_countCanudoBiscoito > 0) {
      descricao.add("CANUDO DE BISCOITO");
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("adicionais", descricao);
  }

  _incrementar(String nome) {
    if (nome == "tortuguita" && _countTortuguita == 0 && _count < 3) {
      setState(() {
        _countTortuguita = _countTortuguita + 1;
        _count = _count + 1;
      });
    } else if (nome == "miniOreo" && _countMiniOreo == 0 && _count < 3) {
      setState(() {
        _countMiniOreo = _countMiniOreo + 1;
        _count = _count + 1;
      });
    } else if (nome == "nutella" && _countNutella == 0 && _count < 3) {
      setState(() {
        _countNutella = _countNutella + 1;
        _count = _count + 1;
      });
    } else if (nome == "cocoRalado" && _countCocoRalado == 0 && _count < 3) {
      setState(() {
        _countCocoRalado = _countCocoRalado + 1;
        _count = _count + 1;
      });
    } else if (nome == "bolaSorvete" && _countBolaSorvete == 0 && _count < 3) {
      setState(() {
        _countBolaSorvete = _countBolaSorvete + 1;
        _count = _count + 1;
      });
    } else if (nome == "chocoPowerBall" &&
        _countChocoPowerBall == 0 &&
        _count < 3) {
      setState(() {
        _countChocoPowerBall = _countChocoPowerBall + 1;
        _count = _count + 1;
      });
    } else if (nome == "ovomaltine" && _countOvomaltine == 0 && _count < 3) {
      setState(() {
        _countOvomaltine = _countOvomaltine + 1;
        _count = _count + 1;
      });
    } else if (nome == "castanhaPara" &&
        _countCastanhaPara == 0 &&
        _count < 3) {
      setState(() {
        _countCastanhaPara = _countCastanhaPara + 1;
        _count = _count + 1;
      });
    } else if (nome == "jujuba" && _countJujuba == 0 && _count < 3) {
      setState(() {
        _countJujuba = _countJujuba + 1;
        _count = _count + 1;
      });
    } else if (nome == "biz" && _countBiz == 0 && _count < 3) {
      setState(() {
        _countBiz = _countBiz + 1;
        _count = _count + 1;
      });
    } else if (nome == "confeteDisquete" &&
        _countConfeteDisquete == 0 &&
        _count < 3) {
      setState(() {
        _countConfeteDisquete = _countConfeteDisquete + 1;
        _count = _count + 1;
      });
    } else if (nome == "canudoBiscoito" &&
        _countCanudoBiscoito == 0 &&
        _count < 3) {
      setState(() {
        _countCanudoBiscoito = _countCanudoBiscoito + 1;
        _count = _count + 1;
      });
    }
  }

  _decrementar(String nome) {
    if (nome == "tortuguita" && _countTortuguita == 1) {
      setState(() {
        _countTortuguita = _countTortuguita - 1;
        _count = _count - 1;
      });
    } else if (nome == "miniOreo" && _countMiniOreo == 1) {
      setState(() {
        _countMiniOreo = _countMiniOreo - 1;
        _count = _count - 1;
      });
    } else if (nome == "nutella" && _countNutella == 1) {
      setState(() {
        _countNutella = _countNutella - 1;
        _count = _count - 1;
      });
    } else if (nome == "cocoRalado" && _countCocoRalado == 1) {
      setState(() {
        _countCocoRalado = _countCocoRalado - 1;
        _count = _count - 1;
      });
    } else if (nome == "bolaSorvete" && _countBolaSorvete == 1) {
      setState(() {
        _countBolaSorvete = _countBolaSorvete - 1;
        _count = _count - 1;
      });
    } else if (nome == "chocoPowerBall" && _countChocoPowerBall == 1) {
      setState(() {
        _countChocoPowerBall = _countChocoPowerBall - 1;
        _count = _count - 1;
      });
    } else if (nome == "ovomaltine" && _countOvomaltine == 1) {
      setState(() {
        _countOvomaltine = _countOvomaltine - 1;
        _count = _count - 1;
      });
    } else if (nome == "castanhaPara" && _countCastanhaPara == 1) {
      setState(() {
        _countCastanhaPara = _countCastanhaPara - 1;
        _count = _count - 1;
      });
    } else if (nome == "jujuba" && _countJujuba == 1) {
      setState(() {
        _countJujuba = _countJujuba - 1;
        _count = _count - 1;
      });
    } else if (nome == "biz" && _countBiz == 1) {
      setState(() {
        _countBiz = _countBiz - 1;
        _count = _count - 1;
      });
    } else if (nome == "confeteDisquete" && _countConfeteDisquete == 1) {
      setState(() {
        _countConfeteDisquete = _countConfeteDisquete - 1;
        _count = _count - 1;
      });
    } else if (nome == "canudoBiscoito" && _countCanudoBiscoito == 1) {
      setState(() {
        _countCanudoBiscoito = _countCanudoBiscoito - 1;
        _count = _count - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _verificaSelecionado();
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
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("tortuguita");
                                    },
                                  ),
                                  Text('$_countTortuguita'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("tortuguita");
                                    },
                                  ),
                                  Text(
                                    "  TORTUGUITA",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("miniOreo");
                                    },
                                  ),
                                  Text('$_countMiniOreo'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("miniOreo");
                                    },
                                  ),
                                  Text(
                                    "  MINI OREO",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("nutella");
                                    },
                                  ),
                                  Text('$_countNutella'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("nutella");
                                    },
                                  ),
                                  Text(
                                    "  NUTELLA 60 G",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("cocoRalado");
                                    },
                                  ),
                                  Text('$_countCocoRalado'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("cocoRalado");
                                    },
                                  ),
                                  Text(
                                    "  COCO RALADO",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("bolaSorvete");
                                    },
                                  ),
                                  Text('$_countBolaSorvete'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("bolaSorvete");
                                    },
                                  ),
                                  Text(
                                    "  BOLA DE SORVETE",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("chocoPowerBall");
                                    },
                                  ),
                                  Text('$_countChocoPowerBall'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("chocoPowerBall");
                                    },
                                  ),
                                  Text(
                                    "  CHOCO POWER BALL",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("ovomaltine");
                                    },
                                  ),
                                  Text('$_countOvomaltine'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("ovomaltine");
                                    },
                                  ),
                                  Text(
                                    "  OVOMALTINE",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("castanhaPara");
                                    },
                                  ),
                                  Text('$_countCastanhaPara'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("castanhaPara");
                                    },
                                  ),
                                  Text(
                                    "  CASTANHA DO PARÁ",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("jujuba");
                                    },
                                  ),
                                  Text('$_countJujuba'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("jujuba");
                                    },
                                  ),
                                  Text(
                                    "  JUJUBA",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("biz");
                                    },
                                  ),
                                  Text('$_countBiz'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("biz");
                                    },
                                  ),
                                  Text(
                                    "  BIZ",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("confeteDisquete");
                                    },
                                  ),
                                  Text('$_countConfeteDisquete'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("confeteDisquete");
                                    },
                                  ),
                                  Text(
                                    "  CONFETE DISQUETE",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("canudoBiscoito");
                                    },
                                  ),
                                  Text('$_countCanudoBiscoito'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("canudoBiscoito");
                                    },
                                  ),
                                  Text(
                                    "  CANUDO DE BISCOITO",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      )
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
                onPressed: () async {
                  await _verificaSelecionado();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CaldaFruta()));
                },
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
