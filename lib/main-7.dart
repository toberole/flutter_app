import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "hello flutter",
    theme: new ThemeData(primaryColor: Colors.blue),
    home: new AppPage(),
  ));
}

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);

  @override
  _ApppageState createState() {
    return new _ApppageState();
  }
}

class _ApppageState extends State {
  String textStr = "hello flutter";

  void _updateText() {
    setState(() {
      textStr = "hello android";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("android"),
      ),
      body: new Center(
        child: new Text(textStr),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _updateText,
        tooltip: "update text",
        child: new Icon(Icons.update),
      ),
    );
  }
}
