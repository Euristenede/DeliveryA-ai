import 'package:flutter/material.dart';

class Funcionamento extends StatelessWidget {
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
                          "Horário de Funcionamento",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Divider(),
                        Text(
                          "Podem variar durante feriados",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Seg",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "Ter",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "Qua",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "Qui",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "Sex",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "Sab",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "Dom",
                                style: estilo,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 50),
                          child: Column(
                            children: [
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                              Divider(),
                              Text(
                                "12:00 - 22:00",
                                style: estilo,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
