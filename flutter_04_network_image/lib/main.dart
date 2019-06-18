import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final title = 'Fade in Images';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            new Center(child: new CircularProgressIndicator()),
            new Center(
              child: new FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://www.doutujun.cn/wp-content/uploads/2019/03/e490336e2b2a4654135afbe86a87a7d0.gif'
              ),
            )
          ],
        ),
      ),
    );
  }
}