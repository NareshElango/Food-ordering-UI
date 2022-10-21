import 'package:assignment/body.dart';
import 'package:assignment/body2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:assignment/navi.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

String user = "Naresh";
int startingIndex = 0;

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      body: SingleChildScrollView(
          child: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/foods.jpeg',
              //height: 300,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
              //ProfilePicture(
              //   name: 'assets/images/waves.jpg', radius: 35, fontsize: 20),
              child: Image.asset(
                'assets/images/naresh.jpeg',
                height: 50,
                scale: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 100, 0, 0),
              child: Text(
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(80, 120, 0, 0),
              child: Text(
                "$user",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 200, 0, 0),
              child: FlutterToggleTab(
                labels: const ["Breakfast", "Lunch"],
                width: 65,
                selectedBackgroundColors: [Colors.grey],
                selectedIndex: startingIndex,
                selectedLabelIndex: (i) {
                  setState(() {
                    startingIndex = i;
                  });
                },
                selectedTextStyle: TextStyle(
                  color: Colors.white,
                ),
                unSelectedTextStyle: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(300, 210, 0, 0),
              child: Icon(
                Icons.search_sharp,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(350, 210, 0, 0),
              child: Icon(
                Icons.rice_bowl,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: body(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: const body2(),

      bottomNavigationBar: const navi(),
    );
  }
}
