import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/chat_bubble.dart';
import '../models/chat_message.dart';

enum MessageType {
  Sender,
  Reciver,
}

class ChatDetailsScreen extends StatefulWidget {
  ChatDetailsScreen({required this.name});
  final String name;

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  List<ChatMessage> chatmessage = [
    ChatMessage(message: 'Hi..', type: MessageType.Sender),
    ChatMessage(message: 'hello..', type: MessageType.Reciver),
    ChatMessage(message: 'how are you..', type: MessageType.Sender),
    ChatMessage(message: 'good you..', type: MessageType.Reciver),
    ChatMessage(message: 'how was the day..', type: MessageType.Sender),
  ];

  File? ImageFile;

  void _getFromcamera()async{
    XFile? pickedFile =(await ImagePicker().
    pickImage(source: ImageSource.camera,
      maxHeight: 1000,
      maxWidth: 1000,
    )) ;
    setState(() {
      ImageFile=File(pickedFile!.path);
    });
    //Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),
          ],
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: chatmessage.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, i) {
                return ChatBubble(
                  chatMessage: chatmessage[i],
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {
                          _getFromcamera();
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message...",
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
