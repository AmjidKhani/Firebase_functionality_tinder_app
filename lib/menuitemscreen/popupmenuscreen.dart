import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class popup extends StatelessWidget {
  const popup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Tinder App",
        ),
        actions: [
          PopupMenuButton<int>(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Row(
                  children: [
                    Icon(
                      Icons.perm_identity,
                      color: Colors.black,
                    ),
                    SizedBox(width: 8),
                    Text("Profile"),
                  ],
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(
                      Icons.update,
                      color: Colors.black,
                    ),
                    SizedBox(width: 8),
                    Text("Update"),
                  ],
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    SizedBox(width: 8),
                    Text("logout"),
                  ],
                ),
              ),
            ],
          ),
        ]);
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        print("Profile Button Tapped");
        //Get.to(profile());
        break;
      case 1:
        print("Update Button Tapped");
        //Get.to(updatescreen());
        break;
      case 2:
        print("Logout button Tapped");
        // Get.to(logout());
        break;
    }
  }
}
