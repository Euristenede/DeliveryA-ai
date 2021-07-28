import 'package:flutter/material.dart';

class FormasPagamento extends StatelessWidget {
  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

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
                          "Formas de Pagamento",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        Text(
                          "Pagamento na entrega",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
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
                        const Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(children: <Widget>[
                          Icon(Icons.attach_money),
                          Text(
                            "  Dinheiro",
                            style: estilo,
                          ),
                        ]),
                        const Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(children: <Widget>[
                          Icon(Icons.credit_card),
                          Text(
                            "  Cartão de débito",
                            style: estilo,
                          ),
                        ]),
                        const Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(children: <Widget>[
                          Icon(Icons.credit_card),
                          Text(
                            "  Cartão de crédito",
                            style: estilo,
                          ),
                        ]),
                        const Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(children: <Widget>[
                          Icon(Icons.money_rounded),
                          Text(
                            "  Pix",
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
        ));
  }
}
