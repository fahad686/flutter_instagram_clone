import 'package:flutter/material.dart';

class ExploreGridview extends StatelessWidget {
  final int itemCount, crossAxisCount;
  final Color? color;
  const ExploreGridview(
      {super.key,
      required this.itemCount,
      required this.crossAxisCount,
      this.color});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(color: color),
        );
      },
    );
  }
}
