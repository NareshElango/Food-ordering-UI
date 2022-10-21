import 'dart:ui';

import 'package:assignment/body2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class body extends StatefulWidget {
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  List<String> images = [
    'assets/images/dosa.jpg',
    'assets/images/egg.jpg',
    'assets/images/meals.jpg',
    'assets/images/mutton.jpg'
  ];
  List<String> text = ['Dosa', 'Egg', 'Meal', 'Non-Veg'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 250, 0),
            child: Text(
              "Category",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(50, 20, 10, 0),
                      child: SizedBox(
                        height: 100,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: images.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 1 / 1,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print(index);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          images[index],
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 75, 0, 0),
                                        child: Text(
                                          text[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ))
                ]),
          )
        ],
      ),
    );
  }
}
