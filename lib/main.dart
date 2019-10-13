<<<<<<< HEAD
import 'package:flutter/material.dart';
import './Login.dart';
import './available_guides.dart';

void main() {
  runApp(Log());
}

class Log extends StatefulWidget {
  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Homepage(),
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.indigo,
          accentColor: Colors.indigoAccent),
      debugShowCheckedModeBanner: false,
    );
  }
}
=======
import 'package:flutter/material.dart';
import './Login.dart';
import './available_guides.dart';

void main() {
  runApp(Log());
}

class Log extends StatefulWidget {
  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Homepage(),
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.indigo,
          accentColor: Colors.indigoAccent),
      debugShowCheckedModeBanner: false,
    );
  }
}
>>>>>>> 7f6a1e94f31d617c0f36ddc6baea9c75b73e9eea
