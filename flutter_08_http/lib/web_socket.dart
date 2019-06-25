import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String title = 'WebSocket Demo';
    return new MaterialApp(
      title: title,
      home: new WebSocketPage(
        title: title,
        channel: new IOWebSocketChannel.connect('ws://echo.websocket.org'),
      ),
    );
  }
}

class WebSocketPage extends StatefulWidget{
  final String title;
  final WebSocketChannel channel;
  WebSocketPage({Key key, @required this.title, @required this.channel}) : super(key:key);

  _WebSocketPageState createState() => _WebSocketPageState();
}

class _WebSocketPageState extends State<WebSocketPage>{
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Padding(
          padding: const EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Form(
                child: new TextFormField(
                  controller: _controller,
                  decoration: new InputDecoration(labelText: 'Send a message'),
                )
            ),
            new StreamBuilder(
              stream: widget.channel.stream,
                builder: (context, snapshot) {
                  return new Padding(
                      padding: const EdgeInsets.all(24.0),
                    child: new Text(snapshot.hasData ? '${snapshot.data}' : ''),
                  );
                },
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: new Icon(Icons.send),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      widget.channel.sink.add(_controller.text);
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}


