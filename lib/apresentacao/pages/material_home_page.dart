import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Point do Açaí')),
      ),
      body: SafeArea(
        child: Container(
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Image.asset("assets/images/slide.png"),
          ),
          color: Colors.green,
        )
      ),
    );
  }
}
