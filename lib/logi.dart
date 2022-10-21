import 'package:assignment/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class logi extends StatefulWidget {
  const logi({super.key});

  @override
  State<logi> createState() => _logiState();
}

class _logiState extends State<logi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 60, 0, 0),
            child: Text("Welcome",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
          ),
          const SizedBox(height: 10),
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                "Delicious Food Service!!!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            height: 200,
          ),
          Container(
              margin: new EdgeInsets.symmetric(horizontal: 20.0),
              // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 75, 0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const homepage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 50, 0),
                        child: const Text(
                          "Sign in via SSO",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )))),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(45, 0, 65, 0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const homepage()),
                    );
                  },
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: const Text(
                        "Sign in for external users",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
              child: Icon(
                Icons.question_mark_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                "Troubling Log-in?",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
