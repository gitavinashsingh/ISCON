import 'package:flutter/material.dart';
import './available_guides.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('FEED BACK FORM')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}


Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('KRISHNA \nnice session '),
      ),
      ListTile(
        title: Text('RAMA \ngreat session'),
      ),
      ListTile(
        title: Text('RANJITH \nsession has made me realised what i lost'),
      ),
      ListTile(
        title: Text('BALAJI \nguide has thought on self maintanance'),
      ),
      ListTile(
        title: Text('VALMIKI \nsession was very useful'),
      ),

    ],
  );
}