import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new LongListApp(
            items : new List<String>.generate(10000, (i) => "Item $i")
        )
    );
  }
}

//使用长列表-----------------------start--------------
class LongListApp extends StatelessWidget {
  final List<String> items;
  LongListApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = 'Long List';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
//使用长列表-----------------------end--------------






