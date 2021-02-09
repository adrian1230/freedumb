import 'package:flutter/material.dart';
import 'package:funspot/database/sample.dart';

// class Book {
//   final String img;
//   final String name;
//   final int price;
//   Book(this.img,this.name,this.price);
// }

class Detail extends StatelessWidget {
  Detail({Key key, @required this.ind}) : super(key: key);
  final int ind;
//   @override
//   _DetailState createState() => _DetailState();
// }

// class _DetailState extends State<Detail> {
  // final int ind;

  // _DetailState(@required this.ind);
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
                    books[ind]['img'],
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
                            Text(books[ind]['name']),
                            Text(books[ind]['price'].toString())
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


