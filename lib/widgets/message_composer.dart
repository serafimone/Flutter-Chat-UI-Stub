import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageComposer extends StatefulWidget {
  MessageComposer({Key key}) : super(key: key);

  String messageText;

  @override
  _MessageComposerState createState() => _MessageComposerState();
}

class _MessageComposerState extends State<MessageComposer> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        height: 70.0,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(CupertinoIcons.collections_solid),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: textEditingController,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration.collapsed(hintText: "Message"),
              ),
            ),
            IconButton(
              icon: Icon(CupertinoIcons.up_arrow),
              iconSize: 25.0,
              color: Theme.of(context).primaryColor,
              onPressed: () {
              },
            ),
          ],
        ));
  }
}
