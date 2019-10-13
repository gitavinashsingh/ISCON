import 'package:flutter/material.dart';

import './MenteesList.dart';

class GuideDetails extends StatefulWidget {
  @override
  FormPageState createState() => FormPageState();
}

class FormPageState extends State<GuideDetails> {

  String _a = "";

  void _ajk(String value){
    setState(() {
      _a = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("FOLK DETAILS"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your name",
                    labelText: "NAME",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your ID",
                    labelText: "ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "belief",
                    labelText: "BEFIEF",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextField(
                  decoration: InputDecoration(
                    hintText: "enter your phone number",
                    labelText: "PHONE NUMBER",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),

                RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute<Null>(builder: (BuildContext context) {
                          return MenteesList();
                        }));
                  },
                  child: new Text("SUBMIT"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

