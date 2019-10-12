import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './available_guides.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();

  subtract() async {
    print(email.text);
    print(password.text);

    final FirebaseUser userId = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text);
    print('Signed in: $userId');

    if (userId != null) {
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new Homepage();
      }));
    } else {
      print("not signed up");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                    child: new TextField(
                        controller: email,
                        decoration: new InputDecoration(labelText: 'Email')),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: new TextField(
                        controller: password,
                        obscureText: true,
                        decoration: new InputDecoration(labelText: 'Password')),
                  ),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 5.0, top: 10.0),
                            child: new RaisedButton(
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.white,
                              color: Color(0xFF18D191),
                              onPressed: subtract,
                              child: new Text("Login"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 20.0, top: 10.0),
                            child: new Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                child: new Text("Forgot Password?",
                                    style: new TextStyle(
                                        fontSize: 17.0, color: Color(0xFF18D191)))),
                          ),
                        )
                      ]),
                  new Container(
                    padding: EdgeInsets.only(top: 12),
                    child: new RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.green,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute<Null>(builder: (BuildContext context) {
                             // return new Register();
                            }));
                      },
                      child: new Text("Create new Account"),
                    ),
                  )
                ])));
  }
}