import 'package:flutter/material.dart';
/*添加Material触摸水波效果*/
class InkWellApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Ink Well Demo';
    // TODO: implement build
    return Scaffold (
      body: new InkWells(title: title),
    );
  }

}

class InkWells extends StatelessWidget{
  final String title;
  InkWells({Key key, this.title}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(child: new MyButton()),
    );
  }
}

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text('Tap')
        ));
      },
      child: new Container(
        padding: new EdgeInsets.all(12.0),
        child: new Text('Flat Button'),
      ),
    );
  }
}