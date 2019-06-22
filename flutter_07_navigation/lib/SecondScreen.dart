import 'package:flutter/material.dart';

class SecondScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Second Screen';
    return Scaffold(
      body: new SecondScreen(title:title),
    );
  }

}

class SecondScreen extends StatelessWidget{
  final String title;
  SecondScreen({Key key, this.title}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new RaisedButton(
            onPressed: () {
              // 返回上级页面
              Navigator.pop(context);
            },
          child: new Text('Go back!'),
        ),
      ),
    );
  }
}