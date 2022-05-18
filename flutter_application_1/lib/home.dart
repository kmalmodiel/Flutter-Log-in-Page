import 'package:flutter/material.dart';

//ignore: camel_case_types
class home extends StatelessWidget {
  const home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        backgroundColor: Colors.white,
        body: new Stack(fit: StackFit.expand, children: <Widget>[
          new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  image: new AssetImage("assets/Hi.gif"),
                  height: 360,
                  width: 500,
                )
              ]),
        ]));
  }
}