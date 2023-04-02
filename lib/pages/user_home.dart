import 'package:flutter/material.dart';
import 'package:instaclone/utils/bubble_stories.dart';

import '../utils/user_post.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  //user-name of bubble stories
  final List peopleName = [
    "Fahad",
    "Marwan",
    "Hassan",
    "Rehmat",
    "Ahmad",
    "Manan",
    "Usman",
    "Talah",
    "Hanan"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Instagram"),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Bubble Stories
          Container(
            height: 100,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: peopleName.length,
                itemBuilder: (context, index) {
                  return BubbleStroires(name: peopleName[index]);
                }),
          ),
          //User Posts
          Expanded(
            child: ListView.builder(
                itemCount: peopleName.length,
                itemBuilder: (context, index) {
                  return UserPost(name: peopleName[index]);
                }),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
