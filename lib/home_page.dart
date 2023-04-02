import 'package:flutter/material.dart';
import 'package:instaclone/pages/user_account.dart';
import 'package:instaclone/pages/user_home.dart';
import 'package:instaclone/pages/user_reels.dart';
import 'package:instaclone/pages/user_search.dart';
import 'package:instaclone/pages/user_shop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //user navigation around bottom nav bar
  int selectedItem = 0;
  void _navigationBar(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  //navigate to page which will user select
  final List<Widget> _navigationItemBody = const [
    UserHome(),
    UserSearch(),
    UserReel(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigationItemBody[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _navigationBar,
          currentIndex: selectedItem,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "  Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ]),
    );
  }
}
