import 'package:flutter/material.dart';

class BubbleStroires extends StatelessWidget {
  final String name;
  const BubbleStroires({
    super.key,
    required String this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(name),
        ],
      ),
    );
  }
}
