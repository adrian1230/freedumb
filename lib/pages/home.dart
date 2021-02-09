import 'package:flutter/material.dart';
import 'package:funspot/pages/detail.dart';
import 'package:funspot/database/sample.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Background(size: size),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  title: Introduction(),
                ),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.02),
                          Column(
                            children: _forloop(books, size)
                          )
                        ],
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

  List<Widget> _forloop(List<Map<String, Object>> books, Size size) {
    return 
    [
      for (var i = 0; i < books.length; i++)
        Container(
          margin: EdgeInsets.only(bottom: 16),
          width: size.width - 38,
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
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(books[i]["img"]),
              radius: 50,
            ),
            title: Text(books[i]['name']),
            subtitle: Text(books[i]["price"].toString()+" USD"),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Detail(ind: i)
                )
              )
            },
          ),
        ),
    ];
  }
}

class Background extends StatelessWidget {
  const Background({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/s3.png"),
      width: size.width,
      height: size.height,
      fit: BoxFit.cover,
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 45 , 10, 10),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Getting Your reading list ~",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[850],
                fontSize: 28
              )
            ),
          ],
        ),
      ),
    );
  }
}

