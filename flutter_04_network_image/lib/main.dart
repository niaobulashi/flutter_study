import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
//import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  // 1、显示来自网上的图片
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = 'Web Images';
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            new Center(
              child: new Image.network(
                'https://img2018.cnblogs.com/blog/1438593/201906/1438593-20190618161447354-729370203.jpg'
              ),
            )
          ],
        ),
      ),
    );
  }


  // 2、用占位符淡入图片
  /*@override
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
  }*/

  //3、使用缓存图片
  /*@override
  Widget build(BuildContext context) {
    final title = 'Cached Images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new CachedNetworkImage(
            imageUrl: "http://via.placeholder.com/350x150",
            placeholder: (context, url) => new CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }*/
}