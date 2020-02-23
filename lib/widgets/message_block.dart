import 'package:flutter/material.dart';
import 'package:message_vk/models/message.model.dart';
import 'package:message_vk/screens/chat_screen.dart';

class MessageBlock extends StatefulWidget {
  final Message message;

  final bool isCurrentUser;

  MessageBlock(this.message, this.isCurrentUser);

  @override
  _MessageBlockState createState() => _MessageBlockState();
}

class _MessageBlockState extends State<MessageBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: widget.isCurrentUser ? 80.0 : 0.0,
        right: widget.isCurrentUser ? 0.0 : 80.0,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
          color: widget.isCurrentUser
              ? Theme.of(context).primaryColor
              : Color(0xFFE0F2F1),
          borderRadius: widget.isCurrentUser
              ? ChatScreen.currentUserMessageBlockRadius
              : ChatScreen.notCurrentMessageBlockRadius),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.61,
                  child: Text(widget.message.text,
                      style: ChatScreen.messageTextStyle)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(widget.message.time, style: ChatScreen.messageSentTimeStyle),
            ],
          )
        ],
      ),
    );
  }
}
