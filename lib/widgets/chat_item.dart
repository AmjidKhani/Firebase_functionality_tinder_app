import 'package:flutter/material.dart';

import '../screens/Chat_details_screen.dart';

class ChatItem extends StatelessWidget {
  ChatItem({
    required this.image,
    required this.name,
    required this.lastMessage,
    required this.lastMsgTime,
  });
  final String image;
  final String name;
  final String lastMessage;
  final String lastMsgTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage(image),
      ),
      title: Text(name),
      subtitle: Text(lastMessage),
      trailing: Text(lastMsgTime),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetailsScreen(name: name),
            ));
      },
    );
  }
}
