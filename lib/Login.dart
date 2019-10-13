import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:iscon/GuideDetails.dart';
import './FolkDetails.dart
import 'package:iscon/FormPage.dart';
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
        return  FolkDetails();
        return new FormPage();
      }));
    } else {
      print("not signed up");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
      appBar: AppBar(

        title: Text("Login"),

      ),
        body: new Container(
            padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
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
                    child: new TextFormField(
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
                            child: RaisedButton(
                              padding: const EdgeInsets.all(8.0),
                              textColor: Colors.white,
                              color: Color(0xFF18D191),
                              onPressed: subtract,
                              child: new Text("Forgot Password"),
                            ),
                          ),
                        )
                      ]),
                  new Container(

                    padding: EdgeInsets.only(top: 12),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.green,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute<Null>(builder: (BuildContext context) {
                                return GuideDetails();
                              }));
                        },
                        child: new Text("Create new Account as a Guide"),
                      ),

                        RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          textColor: Colors.green,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute<Null>(builder: (BuildContext context) {
                                  return FolkDetails();
                                }));
                          },
                          child: new Text("Create new Account as a FOLK"),
                        ),
                      ],

                    ),

                  )
                ])));
  }
}
