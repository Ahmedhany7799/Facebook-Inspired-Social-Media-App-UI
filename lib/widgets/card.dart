import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.img1, required this.img2});
  final Image img1;
  final Image img2;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Image.asset('$img1'),
          Positioned(
            top: 10,
            left: 10,
            child: ClipOval(
              child: Image.asset(
                "$img2",
                fit: BoxFit.cover,
                width: 32,
                height: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
