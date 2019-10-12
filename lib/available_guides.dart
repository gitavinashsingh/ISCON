//https://medium.com/@atul.sharma_94062/how-to-use-cloud-firestore-with-flutter-e6f9e8821b27

import 'package:flutter/material.dart';
import './Login.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text("Appointment"),
      ),
      drawer: Drawer(),
      body: new Container(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Image.asset(
            'assets/images/download.png',
            width: 1080,
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                return Login();
              }));
            },
            child: new Text("Get Appointment"),
          ),
        ],
      )),
    );
  }
}
