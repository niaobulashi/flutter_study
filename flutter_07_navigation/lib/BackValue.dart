import 'package:flutter/material.dart';
import 'package:flutter_07_navigation/SelectionScreen.dart';

class BackValueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Returning Data',
      home: new HomeScreen(),
    );
  }

}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Returning Data Demo'),
      ),
      body: new Center(child: new SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: new Text('Pick an Option, any Option'),
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => SelectionScreen()),
    );
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text('$result')));
  }
}