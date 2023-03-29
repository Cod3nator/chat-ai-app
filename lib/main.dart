import 'package:brain_chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BrainChat());
}

class BrainChat extends StatelessWidget {
  const BrainChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData.dark(),
      home: ChatScreen(),
    );
  }
}
