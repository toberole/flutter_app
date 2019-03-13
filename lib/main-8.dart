import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "hello flutter",
    theme: new ThemeData(primaryColor: Colors.blue),
    home: new AppPage(),
  ));
}

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("hello"),
      ),
      body: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new RaisedButton(
                onPressed: _connected,
                child: new Text("连接设备"),
              )),
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new TextField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(hintText: "wifi name"),
              ))
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new TextField(
                textAlign: TextAlign.center,
                decoration: new InputDecoration(hintText: "wifi pwd"),
              ))
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: new RaisedButton(
                onPressed: _connected,
                child: new Text("配置网络"),
              )),
            ],
          ),
        ],
      ),
    );
  }

  void _connected() {
    // 连接设备
    print("连接设备");
  }
}
