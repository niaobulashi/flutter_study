import 'package:flutter/material.dart';

import 'count_display.dart';
import 'count_test.dart';
import 'image_test.dart';
import 'my_button.dart';
import 'product.dart';
import 'tutorial_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'flutter_02_hello',
      theme: new ThemeData(
        primaryColor: Colors.blue[200],
      ),
      home: MyHomePage(title: 'Flutter示例目录'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TutorialHome()));
              },
              child: Text('TutorialHome'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyButton()));
              },
              child: Text('MyButton'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CountTest()));
              },
              child: Text('CountTest'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Counter()));
              },
              child: Text('CountTest'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => projectInfoList()));
              },
              child: Text('projectInfoList'),
            ),
            new RaisedButton(
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => imageTextChange()));
              },
              child: Text('imageTextChange'),
            ),
          ],
        ),
      ),
    );
  }
}
