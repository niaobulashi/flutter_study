import 'package:flutter/material.dart';
import 'package:flutter_01_startup/hello_world.dart';
import 'package:flutter_01_startup/random_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello World',
      theme: new ThemeData(
        primaryColor: Colors.blue[200]
      ),
      home: MyHomePage(title: 'Hello World Dome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key:key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
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
                    MaterialPageRoute(builder: (context) => HelloWorld()),
                  );
                },
              child: new Text('Hello World'),
            ),
            new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RandomWords()),
                  );
                },
              child: new Text('列表交互💗，加💗的保存在另外List'),
            ),
          ],
        ),
      ),
    );
  }
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.lightBlue[200],
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
        floatingActionButton: new FloatingActionButton(
            tooltip: '跳转到列表',
            child: new Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RandomWords()));
            },
        ),
      ),
//  将上面的home注释掉，解开注释为列表加💗，保存加💗数据列表
//      home: new RandomWords(),
    );
  }
}*/

