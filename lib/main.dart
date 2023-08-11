import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int a = 1;
  int b = 1;
  void dice() {
    setState(() {
      a = Random().nextInt(6);
      b = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child:Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Expanded(
                      child: Container(
                        width: double.maxFinite,
                        color: Colors.green,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text("iam so lucky",
                                  style: TextStyle(fontSize:30,color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 100,
                      width: double.maxFinite,
                      color: Colors.green,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                              child: GestureDetector(onTap: () {
                                setState(() {
                                  dice();
                                });
                                ;
                              },
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black87.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 5,
                                            offset: Offset(0, 3)),
                                      ],
                                      color: Colors.white30,
                                      image: DecorationImage(
                                          image: AssetImage("Assets/$a.jpg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child:GestureDetector(onTap: () {
                              setState(() {
                                dice();
                              });
                              ;
                            },
                              child: Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.black87.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0, 3)),
                                    ],
                                    color: Colors.white30,
                                    image: DecorationImage(
                                        image: AssetImage("Assets/$b.jpg"),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
