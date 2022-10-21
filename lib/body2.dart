import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'body.dart';

class body2 extends StatefulWidget {
  const body2({super.key});

  @override
  State<body2> createState() => _body2State();
}

var start = 0;

class _body2State extends State<body2> {
  List<String> text = [
    "Chicken Fry",
    "Fish Fry",
    "Mutton Fry",
    "Sandwich",
    "Chocolate",
    "Mutton Fry",
  ];
  List<String> images = [
    'assets/images/chicken.jpg',
    'assets/images/fish.jpg',
    'assets/images/mutton.jpg',
    'assets/images/burger.jpg',
    'assets/images/choco.jpg',
    'assets/images/mutton.jpg',
  ];
  List<String> text1 = [
    'Chicken',
    'Fish',
    'Mutton',
    'Sandwich',
    'Choco',
    'Mutton',
  ];
  List<String> ratings = ["5.0", "4.6", "4.9", "4.6", "5.0", "4.5"];
  List<String> qty = ["55", "33", "22", "66", "88", "95"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 500, 0, 0),
            child: Text(
              "All menu",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              child: start == 0
                  ? Column(
                      children: [
                        Container(
                          height: 150,
                          width: 350,
                          child: ListView.builder(
                            itemCount: images.length,
                            itemBuilder: ((context, index) {
                              return Card(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                color: Colors.white,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 19, 0, 0),
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                        scale: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(180, 10, 0, 20),
                                      child: Text(
                                        text[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(181, 40, 0, 20),
                                      child: Text(
                                        text1[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(180, 70, 0, 20),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star_border_outlined,
                                            color: Colors.yellow,
                                          ),
                                          Text(
                                            ratings[index],
                                            style: TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(270, 70, 0, 20),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons
                                                .production_quantity_limits_rounded,
                                            color: Colors.black,
                                          ),
                                          Text(
                                            qty[index],
                                            style: TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    )
                  : body2())
        ],
      ),
    );
  }
}
