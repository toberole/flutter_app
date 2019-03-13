import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var usernameController = new TextEditingController();
  var pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      theme: new ThemeData(primaryColor: Colors.white),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Login"),
          iconTheme: new IconThemeData(color: Colors.red),
          centerTitle: true,
        ),
        body: new Container(
          child: new Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(10.0),
                child: new TextField(
                  controller: usernameController,
                  maxLength: 11,
                  maxLines: 1,
                  autocorrect: true,
                  decoration: new InputDecoration(
                      labelText: "请输入用户名",
                      helperText: "用户名",
                      icon: new Icon(Icons.account_box)),
                  onChanged: (text) {
                    print("change $text");
                  },
                  onSubmitted: (text) {
                    print("submit $text");
                  },
                ),
              ),
              new Container(
                color: Colors.blue,
                height: 15.0,
              ),
              new Padding(
                padding: EdgeInsets.all(10.0),
                child: new TextField(
                  controller: pwdController,
                  maxLength: 11,
                  maxLines: 1,
                  autocorrect: true,
                  decoration: new InputDecoration(
                      labelText: "请输入用户名",
                      helperText: "用户名",
                      icon: new Icon(Icons.account_box)),
                  onChanged: (text) {
                    print("change $text");
                  },
                  onSubmitted: (text) {
                    print("submit $text");
                  },
                ),
              ),
              new Container(
                color: Colors.blue,
                height: 15.0,
              ),
              new InkWell(
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("submit"),
                  decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.black),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(5.0))),
                ),
                onTap: _submit,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    print(usernameController.text.trim());
    print(pwdController.text.trim());
  }
}
