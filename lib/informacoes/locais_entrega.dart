import 'package:flutter/material.dart';

class LocalEntrega extends StatelessWidget {
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
                          "Locais de entrega",
                          style: TextStyle(
                              color: Colors.purple,
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
                        const Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        "  Santa Helena PR",
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
                                      onPressed: null),
                                ],
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        "  Misal PR",
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
                                      onPressed: null),
                                ],
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        "  Medianeira PR",
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
                                      onPressed: null),
                                ],
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        "  Foz do Iguaçu PR",
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
                                      onPressed: null),
                                ],
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined),
                                      Text(
                                        "  São Miguel do Iguaçu PR",
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
                                      onPressed: null),
                                ],
                              ),
                            ]),
                        const Divider(
                          height: 10,
                          thickness: 2,
                          color: Colors.black,
                        ),
                        ExpansionTile(
                          title: Text(
                            'Santa Helena PR',
                            style: estilo,
                          ),
                          children: [
                            Text(
                              "  Centro",
                              style: estilo,
                            ),
                            Text(
                              "  Barra Sul",
                              style: estilo,
                            ),
                            Text(
                              "  Asa Norte",
                              style: estilo,
                            ),
                            Text(
                              "  São José",
                              style: estilo,
                            )
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
