import 'package:flutter/material.dart';

import '../models/chat_model.dart';
import 'package:provider/provider.dart';

class ChatProvider with ChangeNotifier {
  final List<Chat> _chat = [
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'younas khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/2.jpg',
      lastmsgTime: "8:00 pm",
    ),
    Chat(
      name: 'saad ur rehman',
      lastmessage: "how are you",
      profilePic: 'assets/images/3.jpg',
      lastmsgTime: "8:45 pm",
    ),
    Chat(
      name: 'Shaheer alam',
      lastmessage: "how are you",
      profilePic: 'assets/images/4.jpg',
      lastmsgTime: "8:30 pm",
    ),
    Chat(
      name: 'hassan ali',
      lastmessage: "how are you",
      profilePic: 'assets/images/5.jpg',
      lastmsgTime: "8:15 pm",
    ),
    Chat(
      name: 'Aimal khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/6.jpg',
      lastmsgTime: "8:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
    Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),Chat(
      name: 'Aziz khan',
      lastmessage: "how are you",
      profilePic: 'assets/images/1.jpg',
      lastmsgTime: "7:00 pm",
    ),
  ];

  List<Chat> get chats {
    return [..._chat];
  }
}
