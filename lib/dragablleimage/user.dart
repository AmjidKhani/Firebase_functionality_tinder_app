import 'package:flutter/cupertino.dart';


class User {

  final String imgUrl;
  bool isLiked;
  bool isSwipedOff;

  User({
     required this.imgUrl,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
