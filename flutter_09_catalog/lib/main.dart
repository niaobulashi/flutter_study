import 'package:flutter/material.dart';
import 'package:flutter_09_catalog/animated_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter实现常见移动设计模式的应用程序',
      theme: new ThemeData(
        primaryColor: Colors.blue[200],
      ),
      home: MyHomePage(title: 'Flutter示例目录'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key, this.title}):super(key:key);

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
                      MaterialPageRoute(builder: (context) => AnimatedListSample()));
                },
              child: Text('AnimatedList'),
            ),
          ],
        ),
      ),
    );
  }
}