//https://medium.com/@atul.sharma_94062/how-to-use-cloud-firestore-with-flutter-e6f9e8821b27

import 'package:flutter/material.dart';
import 'package:iscon/GuideList.dart';
import './Login.dart';
import './FolkDetails.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        title: Text("ISKCON BENGALURU"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('MENU'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('GUIDES'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GuideList()
                ),);
                },
            ),
            ListTile(
              title: Text('Login Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FolkDetails()
                  ),);
              },
            ),
          ],
        ),
      ),
      body: new Container(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Image.asset(
            'assets/images/download.jpg',
            width: 1080,
          ),
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
            color: Colors.green,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                return Login();
              }));
            },
            child: new Text("Click to Proceed"),
          ),
          Padding(padding: EdgeInsets.only(top: 50.0)),
          FlatButton(
            child: Text("ADDRESS"),
            onPressed: (){

            },
          ),
        Text("Hare Krishna Hill, Chord Rd, \nRajajinagar, Bengaluru, \n"
            "Karnataka 560010")

        ],
      )),
    );
  }
}
