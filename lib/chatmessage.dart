import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {

    final String text;
    final String sender;
    ChatMessage({
     required this.text,required this.sender
});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16.0),
        )
      ],
    );
  }
}
