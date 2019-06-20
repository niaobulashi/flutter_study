import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new HelloWorldApp(),
    );
  }

}

class HelloWorldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = 'Hello to Flutter';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.menu), onPressed: null)
          ],
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          // 点击事件为弹框。。。附加的例子。。
          onPressed: () {
            showDialog<Null>(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return new AlertDialog(
                  title: new Text('标题'),
                  content: new SingleChildScrollView(
                    child: new ListBody(
                      children: <Widget>[
                        new Text('内容 1'),
                        new Text('内容 2'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text('确定'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            ).then((val) {
              print(val);
            });
          },
        ),
      ),
    );
  }

}