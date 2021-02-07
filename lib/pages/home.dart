import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

