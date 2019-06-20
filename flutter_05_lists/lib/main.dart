import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_05_lists/basic_list.dart';
import 'package:flutter_05_lists/grid_list.dart';
import 'package:flutter_05_lists/horizontal_list.dart';
import 'package:flutter_05_lists/long_list.dart';
import 'package:flutter_05_lists/mixed_list.dart';
import 'package:flutter_05_lists/random_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // This widget is the root of you application
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'ListView Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue[300]
      ),
      home: MyHomePage(title: 'List View Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key, this.title}) : super(key : key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  void _showBottomDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return new Container(
          color: Colors.black,
          height: 350.0,
          child: new Container(
            child: new Center(
              child: new Text('This is a modal sheet'),
            ),
          ),
        );
      }
    );
  }

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BasicList()));
              },
              child: Text('基本List'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HorizontalList()));
              },
              child: Text('水平List'),
            ),
            new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LongList()));
                },
              child: Text('长List'),
            ),
            new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MixedList()));
                },
              child: Text('使用不同类型的子项创建列表'),
            ),
            new CupertinoButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GridList()));
                },
              child: Text('网格'),
            ),
              new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RandomWordsApp()));
                },
                child: Text('回顾之前的列表，点💗'),
            ),
          ],
        ),
      ),
    );
  }
}