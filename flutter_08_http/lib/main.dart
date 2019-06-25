import 'package:flutter/material.dart';
import 'package:flutter_08_http/fetch_data.dart';
import 'package:flutter_08_http/web_socket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Http Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue[200]
      ),
      home: MyHomePage(title: 'Http Demo Home Page'),
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
                  Navigator.push(
                      context, 
                    MaterialPageRoute(builder: (context) => FetchData()));
                },
              child: Text('从网上获取数据'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebSocket()));
              },
              child: Text('使用WebSockets'),
            ),
          ],
        ),
      ),
    );
  }
}