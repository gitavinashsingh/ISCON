import 'package:flutter/material.dart';
import './available_guides.dart';


class GuideList extends StatelessWidget{
  const GuideList({ Key key }) : super(key: key);

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
          title: Text("Guide 1"),
          subtitle: Text("Expert in Meditation"),

        ),

        ListTile(
          leading: Icon(Icons.looks_two),
          title: Text("Guide 2"),
          subtitle: Text("Expert in Moral Lecture"),

        ),
        ListTile(
          leading: Icon(Icons.looks_3),
          title: Text("Guide 3"),
          subtitle: Text("Specialisation"),

        ),
        ListTile(
          leading: Icon(Icons.looks_4),
          title: Text("Guide 4"),
          subtitle: Text("Specialisation"),

        ),
        ListTile(
          leading: Icon(Icons.looks_5),
          title: Text("Guide 5"),
          subtitle: Text("Specialisation "),

        ),

      ],
    );

    return listView;
  }
  }
