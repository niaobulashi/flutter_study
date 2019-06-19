import 'package:flutter/material.dart';

class BasicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new BasicListApp(),
    );
  }
}

//基本List-----------------------start--------------
class BasicListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Map'),
            ),
            new ListTile(
              leading: new Icon(Icons.photo),
              title: new Text('Album'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
//基本List-----------------------end--------------