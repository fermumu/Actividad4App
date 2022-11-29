import 'package:flutter/material.dart';
import 'package:whatsappdemo/models/chats_model.dart';

class ChatScreen extends StatefulWidget {
  final String name;

  ChatScreen({required this.name});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  bool _isTyped = false;
  void _habdledSubmit(String text) {
    _textController.clear();
    setState(() {
      _isTyped = false;
    });
    ChatMessage message = new ChatMessage(
        text: text,
        name: widget.name,
        animationController: new AnimationController(
            duration: new Duration(milliseconds: 700), vsync: this));
    setState(() {
      _messages.insert(0, message);
      var data = messageData.firstWhere((t) => t.name == widget.name);
      data.message = message.text;
    });
    message.animationController.forward();
    print(text);
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).primaryColor),
        child: new Container(
          child: new Row(
            children: <Widget>[
              new Flexible(
                  child: new TextField(
                controller: _textController,
                onChanged: (String text) {
                  setState(() {
                    _isTyped = text.length > 0;
                  });
                },
                decoration:
                    new InputDecoration.collapsed(hintText: "Enviar Mensaje"),
              )),
              new Container(
                child: new IconButton(
                    onPressed: _isTyped
                        ? () => _habdledSubmit(_textController.text)
                        : null,
                    icon: new Icon(Icons.send)),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.name)),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: new ListView.builder(
              padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            )),
            new Divider(
              height: 1.0,
            ),
            new Container(
              child: _buildTextComposer(),
            )
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage(
      {required this.text,
      required this.name,
      required this.animationController});
  final String text;
  final String name;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(
                child: new Text(name[0]),
              ),
            ),
            new Expanded(
                child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(name, style: Theme.of(context).textTheme.subtitle2),
                new Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text(text),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
