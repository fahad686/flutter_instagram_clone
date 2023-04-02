import 'package:flutter/material.dart';
import 'package:instaclone/utils/bubble_stories.dart';

import '../utils/tabbar_views/account_tab1.dart';
import '../utils/tabbar_views/account_tab2.dart';
import '../utils/tabbar_views/account_tab3.dart';
import '../utils/tabbar_views/account_tab4.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 70.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile photo
                  Container(
                    width: 105,
                    height: 105,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                  ),
                  // post followers following

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //post
                        Column(
                          children: const [
                            Text(
                              "325",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Post",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        //follower
                        Column(
                          children: const [
                            Text(
                              "1.5M",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Follower",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        ),
                        //following
                        Column(
                          children: const [
                            Text(
                              "35",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(fontSize: 17),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //UserName and bio
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Fahad Ali',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'I am a Software  Engineer',
                    ),
                  ),
                  Text(
                    'https//:github/fahadhn/686/',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              "Add Tool",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              "Insight",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //stories
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Row(
                children: const [
                  BubbleStroires(
                    name: "Story1",
                  ),
                  BubbleStroires(
                    name: "Story2",
                  ),
                  BubbleStroires(
                    name: "Story3",
                  ),
                  BubbleStroires(
                    name: "Story4",
                  ),
                ],
              ),
            ),
            //DefaultTabController
            const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call_outlined),
              ),
              Tab(
                icon: Icon(Icons.shop_outlined),
              ),
              Tab(
                icon: Icon(Icons.person_outline),
              )
            ]),
            //Tabbar view
            const Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
