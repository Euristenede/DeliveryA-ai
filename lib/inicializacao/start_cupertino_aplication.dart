import 'package:appacai/apresentacao/pages/cupertino_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartCupertinoApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Soma de 2 valores',
      theme: CupertinoThemeData(primaryColor: Colors.blue),
      home: CupertinoHomePage(),
    );
  }
}
