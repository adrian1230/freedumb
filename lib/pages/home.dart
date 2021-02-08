import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var books =[
      {
        "id":"0",
        "img":"assets/images/b1.png",
        "name":"THE GENE AND INTIMATE HISTORY",
        "price":12
      },
      {
        "id":"1",
        "img":"assets/images/b2.png",
        "name":"MY FIGHT YOUR FIGHT",
        "price":19.99
      },
      {
        "id":"2",
        "img":"assets/images/b3.png",
        "name":"STOP SURVIVING START FIGHTING",
        "price":123
      },
      {
        "id":"3",
        "img":"assets/images/b4.png",
        "name":"THE SURVIVORS",
        "price":102
      },
      {
        "id":"4",
        "img":"assets/images/b5.png",
        "name":"The Mermaid of Black Conch",
        "price":10.2
      },
      {
        "id":"5",
        "img":"assets/images/b6.png",
        "name":"PROSPER'S DEMON",
        "price":129.99
      },
      {
        "id":"6",
        "img":"assets/images/b7.png",
        "name":"The Body",
        "price":82
      },
    ];
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/images/s3.png"),
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * .07),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Getting Your reading list ~",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreenAccent[400],
                          fontSize: 28
                        )
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: size.height * 0.2),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                                    ),
                                    title: Text(i["name"]),
                                    subtitle: Text(i["price"].toString()),
                                    onLongPress: () => {},
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
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

