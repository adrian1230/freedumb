import 'package:flutter/material.dart';
import 'package:funspot/database/sample.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                  ]
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


