import 'package:flutter/material.dart';

class imageTextChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ShowAppPage(),
    );
  }

}

class ShowAppPage extends StatefulWidget{
  @override
  _ShowAppPageState createState() {
    // TODO: implement createState
    return _ShowAppPageState();
  }
}

class _ShowAppPageState extends State<ShowAppPage>{
  String title = '春天的脚步近了，我们应该更加青春有朝气';

  bool change = false;

  void _changeTestContent() {
    setState(() {
      title = change ? "这个图片很好看，描述了春天的气息" : "春天的脚步近了，我们应该更加青春有朝气";
      change = !change;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Text('春天的气息'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3233281956,901388475&fm=26&gp=0.jpg'
              ),
            ),
            //动态绑定数据
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '$title',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            RaisedButton(
              onPressed: _changeTestContent,
              child: Text('点击更换内容'),
            )
          ],
        ),
      ),
    );
  }
}