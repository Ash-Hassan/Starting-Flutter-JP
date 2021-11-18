import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon/login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initstate() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Center(
          child: Image.asset(
            "assets/cart.gif",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => login()));
        },
      ),
    );
  }
}
