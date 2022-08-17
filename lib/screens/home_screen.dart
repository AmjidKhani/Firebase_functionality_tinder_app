import 'package:flutter/material.dart';
import '../screens/tabPages/cards_tab.dart';
import '../screens/tabPages/chat_tab.dart';
import '../screens/tabPages/coin_tab.dart';
import '../screens/tabPages/like_tab.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: const [
            Homepage(),
            Chat_Tab(),
            CoinTab(),
            Cards_Tab(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.thumb_up_alt), label: "Like"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Coins"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cards"),
          ],
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(fontSize: 14.0),
          // backgroundColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: selectedIndex,
          onTap: onItemClicked,
        ),
      ),
    );
  }
}
