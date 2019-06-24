import 'package:flutter/material.dart';
import 'package:flutter_07_navigation/BackValue.dart';
import 'package:flutter_07_navigation/SecondScreen.dart';
import 'package:flutter_07_navigation/todo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Navigation Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue[200]
      ),
      home: MyHomePage(title: 'Navigation Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key, this.title}) : super(key:key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
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
                  // 直接导航跳转到下一个页面
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreenApp()));
                    },
              child: Text('导航到新页面并返回'),
            ),
            new RaisedButton(
                onPressed: () {
                  // 才有参数的传递
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoList()));
                  },
              child: Text('给新页面传值'),
            ),
            new RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => BackValueApp()));
                },
              child: Text('从新页面返回数据给上一个页面'),
            ),
          ],
        ),
      ),
    );
  }
}