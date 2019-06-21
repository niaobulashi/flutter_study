import 'package:flutter/material.dart';
import 'package:flutter_06_taps/gesture.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Taps Demo',
      theme: new ThemeData(
        primaryColor: Colors.blue[200]
      ),
      home: MyHomePage(title: 'Taps Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  MyHomePage({Key key, this.title}) : super(key:key);

  @override
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
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GestureApp()));
                },
              child: Text('Gestures Demo'),
            ),
          ],
        ),
      ),
    );
  }
}