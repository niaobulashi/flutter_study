import 'package:flutter/material.dart';

//------------------CountTest-start------------------------
class CountTest extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<CountTest> {
  int _counter = 0;
  void _increment () {
    setState(() {
      _counter++;
    });
  }
  void clearCount() {
    setState(() {
      _counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          onPressed: null,
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.delete),
            onPressed: clearCount,
          ),
          new IconButton(
            icon: new Icon(Icons.menu),
            onPressed: _increment,
          ),
        ],
      ),
      body: new Center(
        child: new Text('Hello world，' + 'Count=$_counter'),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add',
        child: new Icon(Icons.add),
        onPressed: _increment,
      ),
    );
  }
}
//------------------CountTest-end------------------------
