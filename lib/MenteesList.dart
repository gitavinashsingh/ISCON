import 'package:flutter/material.dart';



class MenteesList extends StatelessWidget{
  const MenteesList({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("GUIDE LIST"),
      ),
      body: getListView(),
    );
  }

  Widget getListView() {

    var listView = ListView(
      children: <Widget>[

        ListTile(
          leading: Icon(Icons.looks_one),
          title: Text("FOLK 1"),
          subtitle: Text("About"),

        ),

        ListTile(
          leading: Icon(Icons.looks_two),
          title: Text("FOLK 2"),
          subtitle: Text("About"),

        ),
        ListTile(
          leading: Icon(Icons.looks_3),
          title: Text("FOLK 3"),
          subtitle: Text("About"),

        ),
        ListTile(
          leading: Icon(Icons.looks_4),
          title: Text("FOLK 4"),
          subtitle: Text("About"),

        ),
        ListTile(
          leading: Icon(Icons.looks_5),
          title: Text("FOLK 5"),
          subtitle: Text("About"),

        ),

      ],
    );

    return listView;
  }
}
