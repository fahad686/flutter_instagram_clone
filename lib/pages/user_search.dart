import 'package:flutter/material.dart';
import 'package:instaclone/utils/explore_gridview.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
              color: Colors.grey[400],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              )),
        ),
      ),
      body: ExploreGridview(
        itemCount: 20,
        crossAxisCount: 3,
        color: Colors.deepPurple[100],
      ),
    );
  }
}
