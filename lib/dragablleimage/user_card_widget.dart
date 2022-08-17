
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tinder_app/dragablleimage/user.dart';


class UserCardWidget extends StatelessWidget {
  final User user;
  final bool isUserInFocus;

  const UserCardWidget({
    required this.user,
    required this.isUserInFocus,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      width: size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(user.imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0.5),
          ],
          gradient: LinearGradient(
            colors: [Colors.black12, Colors.black87],
            begin: Alignment.center,
            stops: [0.4, 1],
            end: Alignment.bottomCenter,
          ),
        ),
       // child: Stack(
         // children: [
           // Positioned(
             // right: 10,
              //left: 10,
              //bottom: 10,

            //),
           // if (isUserInFocus) buildLikeBadge(swipingDirection)
         // ],
        ),
      //),
    );
  }


 /* Widget buildUserInfo({required User user}) => Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}, ${user.age}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              user.designation,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 4),
            Text(
              '${user.mutualFriends} Mutual Friends',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
  */
}
