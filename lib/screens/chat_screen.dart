import 'package:flutter/material.dart';
import 'package:message_vk/models/mock.dart';
import 'package:message_vk/models/user.model.dart';
import 'package:message_vk/widgets/message_block.dart';
import 'package:message_vk/widgets/message_composer.dart';

class ChatScreen extends StatefulWidget {
  static final mainRadius = BorderRadius.only(
      topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0));

  static final currentUserMessageBlockRadius = BorderRadius.only(
      topLeft: Radius.circular(15.0), bottomLeft: Radius.circular(15.0));

  static final notCurrentMessageBlockRadius = BorderRadius.only(
      topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0));

  static final messageTextStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static final messageSentTimeStyle =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0);

  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: ChatScreen.mainRadius),
                child: ClipRRect(
                  borderRadius: ChatScreen.mainRadius,
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: chat.length,
                      itemBuilder: (BuildContext context, int index) {
                        final message = chat[index];
                        final isCurrentUser =
                            currentUser.id == message.sender.id;
                        return MessageBlock(message, isCurrentUser);
                      }),
                ),
              ),
            ),
            MessageComposer(),
          ],
        ),
      ),
    );
  }
}
