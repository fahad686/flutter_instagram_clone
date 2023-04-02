import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserReel extends StatefulWidget {
  const UserReel({super.key});

  @override
  State<UserReel> createState() => _UserReelState();
}

class _UserReelState extends State<UserReel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Reels"),
      ),
    );
  }
}
