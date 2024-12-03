import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/model1.jpg"),
                  radius: 35,
                ),
                SizedBox(width: 8),
                Column(
                  children: [
                    Text("El OSTA",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff242527))),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("8h .",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff898F9C))),
                        Image(image: AssetImage("assets/images/Earth.png")),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 210,
                ),
                Image(image: AssetImage("assets/images/Group 10.png")),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/model1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            //child: Image.asset("assets/images/model1.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/heart.png")),
                SizedBox(
                  width: 10,
                ),
                Image(image: AssetImage("assets/images/Chat_Dots.png")),
                SizedBox(
                  width: 10,
                ),
                Image(image: AssetImage("assets/images/send.png")),
                SizedBox(
                  width: 250,
                ),
                Image(image: AssetImage("assets/images/save.png")),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
