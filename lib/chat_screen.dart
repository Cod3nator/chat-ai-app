import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'chatmessage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller=TextEditingController();
  final List<ChatMessage>_messages=[];
  Widget _buildTextContext(){
    return Row(
      children: [
        Expanded(child: TextField(
          controller: _controller,
          decoration: InputDecoration.collapsed(hintText: 'Send a message'),
        ),),
        IconButton(onPressed: (){},
    icon:Icon(Icons.send),
    ),
      ],
    ).px16();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Brains'
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
        child:ListView.builder(
          reverse: true,
            itemCount: _messages.length,
            padding: Vx.m8,
            itemBuilder:(context,index){
         return  _messages[index];

        }
      ),),

            Container(
              decoration: BoxDecoration(
                color: context.cardColor,
              ),
              child: _buildTextContext(),
            )
          ],
        ),
      ),
    );
  }
}
