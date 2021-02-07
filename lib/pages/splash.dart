import 'dart:async';
import 'package:flutter/material.dart';
import "dart:math";
import 'package:funspot/pages/home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var splashes = [
      "assets/images/s1.png",
      "assets/images/s2.png",
      // "assets/images/s3.png",
    ];
    final _random = new Random();
    var n = _random.nextInt(splashes.length);
    var ele = splashes[n];
    Timer(
      Duration(seconds: 2),
      () =>
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => Home()
        )
      )
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ele),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}