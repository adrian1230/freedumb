import 'package:flutter/material.dart';
import 'package:funspot/database/sample.dart';

// class Book {
//   final String img;
//   final String name;
//   final int price;
//   Book(this.img,this.name,this.price);
// }

class Detail extends StatefulWidget {
  // Detail({Key key, @required this.book_1}) : super(key: key);
  // final List book_1;
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
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/b1.png',
                    fit:BoxFit.cover
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      decoration: BoxDecoration(
                        color:  Color(0xFFEBEDF0),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,10),
                            blurRadius: 28,
                            color: Color(0xFFD6D4D2).withOpacity(0.6),
                          ),
                        ],
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Text(books[0]['name']),
                            Text(books[0]['price'].toString())
                          ]
                        ),
                      ),
                    ),
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


