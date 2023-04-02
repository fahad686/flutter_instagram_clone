import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({super.key, required String this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 350,
          color: Colors.grey[300],
        ),
        //below story like comment and share buttons...
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: const [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.share),
              ],
            ),
            const Icon(Icons.bookmark),
          ]),
        ),
        //like....
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: Row(
            children: const [
              Text("Liked by "),
              Text(
                "Sarfraz",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text(
                "others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //comment
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 5),
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: "Hassan",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          " Wow, it is very beautiful..........................................................................."),
                ])),
          ),
        )
      ],
    );
  }
}
