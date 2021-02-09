import 'package:flutter/material.dart';
import 'package:funspot/database/sample.dart';

class FullScreen extends StatelessWidget {
  final int ex;
  const FullScreen({Key key, @required this.ex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(books[ex]['img']),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}