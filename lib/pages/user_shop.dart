import 'package:flutter/material.dart';
import 'package:instaclone/utils/explore_gridview.dart';

class UserShop extends StatefulWidget {
  const UserShop({super.key});

  @override
  State<UserShop> createState() => _UserShopState();
}

class _UserShopState extends State<UserShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shop",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.menu)
                    ],
                  ),
                ],
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                    color: Colors.grey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ExploreGridview(
                  crossAxisCount: 2,
                  itemCount: 20,
                  color: Colors.purple[100],
                ),
              )
            ],
          ),
        ));
  }
}
