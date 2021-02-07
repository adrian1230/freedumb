import 'package:flutter/material.dart';
import "dart:math";

import 'package:funspot/pages/home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var s_list = [
      "assets/images/s1.png",
      "assets/images/s2.png",
      // "assets/images/s3.png",
    ];
    var s_color = [
      Colors.white,
      Colors.black
    ];
    final _random = new Random();
    var n = _random.nextInt(s_list.length);
    var ele = s_list[n];
    var ment = s_color[n];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ele),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: Container(),),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => Home(),
                      )),
                  child: Text(
                    "Log On",
                    style: TextStyle(
                      color: ment,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height:20)
          ],
        )
      ),
    );
  }
}