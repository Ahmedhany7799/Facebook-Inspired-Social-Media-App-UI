import 'dart:async';

import 'package:facebook/views/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 7,
          ),
          const Center(
            child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/face.png")),
          ),
          const Spacer(
            flex: 9,
          ),
          const Text(
            "From",
            style: TextStyle(fontSize: 16, color: Color(0xFF898F9C)),
          ),
          SizedBox(
            width: 100,
            height: 50,
            child: Image.asset("assets/images/Meta Logo.png"),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      )),
    );
  }
}
