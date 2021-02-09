import 'package:flutter/material.dart';
import 'package:funspot/database/sample.dart';

class Detail extends StatelessWidget {
  Detail({Key key, @required this.ind}) : super(key: key);
  final int ind;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 330,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    books[ind]['img'],
                    fit:BoxFit.cover
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    }
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.open_in_full),
                    color: Colors.white,
                    onPressed: null
                  )
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(height: size.height * 0.01),
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


