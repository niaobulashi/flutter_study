import 'package:flutter/material.dart';

//使用不同类型的子项创建列表
//1.使用不同类型的数据创建数据源
//2.将数据源转换为Widgets列表

class MixedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new MixedListApp(
        items: new List<ListItem>.generate(
          1000,
              (i) => i % 6 == 0
              ? new HeadingItem("Heading $i")
              : new MessageItem("Sender $i", "Message body $i"),
        ),
      ),
    );
  }
}

class MixedListApp extends StatelessWidget{
  final List<ListItem> items;
  MixedListApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        // 使用ListView.builder将item转换为Widget
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is HeadingItem) {
              return new ListTile(
                title: new Text(
                  item.heading,
                  style: Theme.of(context).textTheme.headline,
                ),
              );
            } else if (item is MessageItem) {
              return new ListTile(
                title: new Text(item.sender),
                subtitle: new Text(item.body),
              );
            }
          },
        ),
      ),
    );
  }
}



abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}