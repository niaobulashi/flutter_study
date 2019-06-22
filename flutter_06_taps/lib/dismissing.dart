import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

/*实现滑动关闭*/
class DismissingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Dismissing(
        items: new List<String>.generate(20, (i) => "Item ${i + 1}"),
      ),
    );
  }
}

class Dismissing extends StatelessWidget{
  final List<String> items;
  Dismissing({Key key, @required this.items}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final String title = 'Dismissing Items';
    // TODO: implement build
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
            itemCount: items.length,
          itemBuilder: (context, index) {
              final item = items[index];
              return new Dismissible(
                key: new Key(item),
                onDismissed: (direction) {
                  items.removeAt(index);

                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dismissed")));
                },
                // Show a red background as the item is swiped away
                background: new Container(color: Colors.red),
                child: new ListTile(title: new Text('$item')),
              );
          },
        ),
      ),
    );
  }
}