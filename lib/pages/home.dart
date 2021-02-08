import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var book_image = [
      "assets/images/b1.png",
      "assets/images/b2.png",
      "assets/images/b3.png",
      "assets/images/b4.png",
      "assets/images/b5.png",
      "assets/images/b6.png",
      "assets/images/b7.png",
    ];
    var book_price = [
      12,19.9,14,25,67,109,48.5
    ];
    var book_name = [
      "THE GENE AND INTIMATE HISTORY",
      "MY FIGHT YOUR FIGHT",
      "STOP SURVIVING START FIGHTING",
      "THE SURVIVORS",
      "The Mermaid of Black Conch",
      "PROSPER'S DEMON",
      "The Body"
    ];
    return Scaffold(
      // backgroundColor: Color(0xffEBEDF0),
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
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .31),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container(
                              //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                              //   margin: EdgeInsets.only(bottom: 16),
                              //   width: size.width - 38,
                              //   decoration: BoxDecoration(
                              //     color:  Color(0xFFEBEDF0),
                              //     borderRadius: BorderRadius.circular(25),
                              //     boxShadow: [
                              //       BoxShadow(
                              //         offset: Offset(0,10),
                              //         blurRadius: 28,
                              //         color: Color(0xFFD6D4D2).withOpacity(0.6),
                              //       ),
                              //     ],
                              //   ),
                              // ),
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

