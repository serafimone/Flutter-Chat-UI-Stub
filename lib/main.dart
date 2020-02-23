import 'package:flutter/material.dart';
import 'package:message_vk/screens/chat_main.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.white
      ),
      home: ChatMainPage(),
    );
  }
  
}

