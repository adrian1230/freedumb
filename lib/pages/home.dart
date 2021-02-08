import 'package:flutter/material.dart';
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
        ],
      ),
      // body: Stack(
      //   children: [
      //     Background(size: size),
      //     Column(
      //       children: [
      //         SizedBox(height: size.height * .07),
      //         Introduction(),
      //         SizedBox(width: size.height * 0.4),
      //         Expanded(
      //           flex: 1,
      //           child: Padding(
      //             padding: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: size.height * 0.03),
      //             child: Column(
      //               children: _forloop(books, size)
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      // body: CustomScrollView(
      //   slivers: [
      //     SliverList(
      //       delegate: SliverChildListDelegate(
      //         [
      //           Background(size: size),
      //         ]
      //       ),
      //     ),
      //   ],
      // ),
    );
  }

  List<Widget> _forloop(List<Map<String, Object>> books, Size size) {
    return 
    [
      for (var i in books)
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
              backgroundImage: AssetImage(i["img"]),
              radius: 50,
            ),
            title: Text(i["name"]),
            subtitle: Text(i["price"].toString()+" USD"),
            onLongPress: () => {},
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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

