import 'package:flutter/material.dart';
import '../../dragablleimage/user.dart';
import '../../dragablleimage/user_card_widget.dart';
import '../../dragablleimage/user_data.dart';
import '../../menuitemscreen/popupmenuscreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  final List<User> users = dummyUsers;
  final controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("Tinder clone"),
        elevation: 0,
        actions: [
          Expanded(child: popup()),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
        child: Column(
          children: [
            users.isEmpty
                ? Text('No more users')
                : Stack(children: users.map(buildUser).toList()),
            Expanded(child: Container()),
            //   BottomButtonsWidget()
          ],
        ),
      ),
    );
  }

  Widget buildUser(User user) {
    final userIndex = users.indexOf(user);
    final isUserInFocus = userIndex == users.length - 1;

    return Draggable(
      child: UserCardWidget(user: user,isUserInFocus: isUserInFocus,),
      feedback:
      Material(
          type: MaterialType.transparency,
          child: UserCardWidget(user: user,isUserInFocus:isUserInFocus ,
          )

      ),
      childWhenDragging: Container(),
      onDragEnd: (details)=>onDragEnd(details, user),
    );
  }
  void onDragEnd(DraggableDetails details, User user) {
    final minimumDrag = 100;
    if (details.offset.dx > minimumDrag) {
      user.isSwipedOff = true;
    } else if (details.offset.dx < -minimumDrag) {
      user.isLiked = true;
    }

    setState(() => users.remove(user));
  }
}
