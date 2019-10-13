import 'package:flutter/material.dart';

import './Appointment.dart';

class FolkDetails extends StatefulWidget {
  @override
  FormPageState createState() => FormPageState();
}

class FormPageState extends State<FolkDetails> {

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
                    hintText: "why do you need appointment(describe beriefly)",
                    labelText: "REASON",
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
                RadioListTile(
                  value: "Beginner",
                  title: Text("Beginner"),
                 groupValue: _a,
                 onChanged: (String value){
                   _ajk(value);
                 },
                  activeColor: Colors.teal,
                  subtitle: Text("Begineer level FOLK"),
                ),
                RadioListTile(
                  value: "Intermediate",
                  title: Text("Intermediate"),
                  groupValue: _a,
                  onChanged: (String value){
                    _ajk(value);
                  },
                  activeColor: Colors.teal,
                  subtitle: Text("Intermediate level FOLK"),
                ),
                RadioListTile(
                  value: "Expert",
                  title: Text("Expert"),
                  groupValue: _a,
                  onChanged: (String value){
                    _ajk(value);
                  },
                  activeColor: Colors.teal,
                  subtitle: Text("Expert level FOLK"),
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute<Null>(builder: (BuildContext context) {
                          return Appointment();
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

