import 'package:flutter/material.dart';
import 'package:funspot/database/sample.dart';
import 'package:funspot/pages/fullscreen.dart';

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
                title: Text(
                  "FreeDumb",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                expandedHeight: 330,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    books[ind]['img'],
                    fit:BoxFit.cover
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.open_in_full),
                    color: Colors.white,
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => FullScreen(ex: ind)
                        )
                      )
                    }
                  )
                ],
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
                            SizedBox(height: size.height * 0.03),
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


