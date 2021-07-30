import 'package:flutter/cupertino.dart';

class CupertinoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Home Page'),
        ),
        child: Center(
          child: Text("Home page"),
        ));
  }
}
