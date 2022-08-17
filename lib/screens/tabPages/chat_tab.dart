import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/chats_provider.dart';
import '../../widgets/chat_item.dart';

class Chat_Tab extends StatefulWidget {
  const Chat_Tab({Key? key}) : super(key: key);

  @override
  State<Chat_Tab> createState() => _Chat_TabState();
}

class _Chat_TabState extends State<Chat_Tab> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final chatData = Provider.of<ChatProvider>(context);
    return Scaffold(
appBar: AppBar(title: Text("Inbox"),

centerTitle: true,),
      body:  ListView(
        children:[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CupertinoSearchTextField(),
          ),
              ListView.builder(
                shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: chatData.chats.length,
                  itemBuilder: (_, i) => ChatItem(
                    image: chatData.chats[i].profilePic,
                    name: chatData.chats[i].name,
                    lastMessage: chatData.chats[i].lastmessage,
                    lastMsgTime: chatData.chats[i].lastmsgTime,
                  ),
                ),

        ],
    ),
    );

  }
}
