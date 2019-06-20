import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridListApp(),
    );
  }

}

class GridListApp extends StatelessWidget{
  final title = 'Grid List';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new GridView.count(
            crossAxisCount: 2,
          children: new List.generate(101, (index) {
            return new Center(
              child: new Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}