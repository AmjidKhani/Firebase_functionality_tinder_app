
import 'package:flutter/material.dart';

import '../models/chat_message.dart';
import '../screens/Chat_details_screen.dart';

class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Align(
        alignment: widget.chatMessage.type == MessageType.Reciver
            ? Alignment.topLeft
            : Alignment.topRight,
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: widget.chatMessage.type == MessageType.Reciver
                ? Colors.white
                : Colors.grey.shade200,
          ),
          child: Text(
            widget.chatMessage.message,
          ),
        ),
      ),
    );
  }
}
