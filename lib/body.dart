import 'dart:ffi';
import 'dart:ui';
import 'tipcalculator.dart';
import 'package:wheel_slider/wheel_slider.dart';


import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index=0;
  int index1=0;
  int splits = 1;
  int billValBeforeDecimal = 0;
  int billValAfterDecimal = 0;
  int currentindex=0;

  double tippercentage = 0;
  Tipcalculator calculator = Tipcalculator(0, 0, 0);
  double bill(int billValBeforeDecimal, int billValAfterDecimal) {
    return double.parse(
        billValBeforeDecimal.toString() + "." + billValAfterDecimal.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
            width: 300,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding: EdgeInsets.fromLTRB(5, 5, 0, 0)),
                    Text("PER PERSON",
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "\$",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                         Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0))
                      ],
                    ),
                    Text(
                      calculator
                          .perperson(
                              bill(billValBeforeDecimal, billValAfterDecimal),
                              tippercentage,
                              splits)
                          .split('.')[0],
                      style: const TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    const Text(".",
                        style: TextStyle(fontSize: 50, color: Colors.white)),
                    Column(
                      children: [
                        const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                        Text(
                          calculator
                              .perperson(
                                  bill(billValBeforeDecimal,
                                      billValAfterDecimal),
                                  tippercentage,
                                  splits)
                              .split('.')[1],
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text("SUBTOTAL",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white)),
                        Text(
                            "\$ " +
                                (bill(billValBeforeDecimal,
                                            billValAfterDecimal) /
                                        splits)
                                    .toStringAsFixed(2),
                          style:
                               const TextStyle(fontSize: 17, color: Colors.white)),
                       const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                        const Text("TIP",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white)),
                        Text(
                            "\$ " +
                                ((bill(billValBeforeDecimal,
                                                billValAfterDecimal) *
                                            tippercentage) /
                                        splits)
                                    .toStringAsFixed(2),
                            style: const TextStyle(fontSize: 17, color: Colors.white)),
                            
                      ],
                      
                    )
                  ],
                ),
                Row(children: const [
                
                Padding(padding: EdgeInsets.fromLTRB(70,0, 0, 0),
                child: Text("TOTAL", style: 
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),)
                  
                ],)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "\$",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                         Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0))
                      ],
                    ),
                    Text(
                      (calculator.totalamount(
                              bill(billValBeforeDecimal, billValAfterDecimal),
                              tippercentage))
                          .split('.')[0],
                      style: const TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    const Text(".",
                        style: TextStyle(fontSize: 50, color: Colors.white)),
                    Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                        Text(
                          (calculator.totalamount(
                                  bill(billValBeforeDecimal,
                                      billValAfterDecimal),
                                  tippercentage))
                              .split('.')[1],
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Text("SUBTOTAL",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white)),
                        Text(
                            "\$ " +
                                bill(billValBeforeDecimal, billValAfterDecimal)
                                    .toStringAsFixed(2),
                            style:
                               const TextStyle(fontSize: 17, color: Colors.white)),
                        const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                        const Text("TIP",
                            style:
                                TextStyle(fontSize: 17, color: Colors.white)),
                        Text(
                            "\$ " +
                                (bill(billValBeforeDecimal,
                                            billValAfterDecimal) *
                                        tippercentage)
                                    .toStringAsFixed(2),
                            style: const TextStyle(fontSize: 17, color: Colors.white))
                      ],
                    )
                  ],
                ),
                Row(children: const [
                
                Padding(padding: EdgeInsets.fromLTRB(70,0, 0, 0),
                child: Text("TOTAL", style: 
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),)
                  
                ],)
              ],

            ),
          ),
          Wrap(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("10%"),
                  onPressed: () {
                    setState(() {
                      tippercentage = 0.1;
                    });
                  }),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("15%"),
                  onPressed: () {
                    setState(() {
                      tippercentage = 0.15;
                    });
                  }),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("20%"),
                  onPressed: () {
                    setState(() {
                      currentindex=0;
                      
                      tippercentage = 0.2;
                    });
                  }),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("Custom"),
                  onPressed: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              Text(
                "Total Amount",
                style: TextStyle(color: Colors.pink, fontSize: 20),
                
              ),
            ],
          ),
          Container(
            height: 150,
            // color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "\$",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                WheelSlider.number(
                  allowPointerTappable: false,
     scrollPhysics:  const FixedExtentScrollPhysics(),
                  verticalListHeight: 100,
                  totalCount: 1000,
                  initValue: 0,
                  horizontal: false,
                  unSelectedNumberStyle:
                      const TextStyle(fontSize: 15, color: Colors.white),
                  onValueChanged: (value) {
                    setState(() {
                      billValBeforeDecimal=value;
                      index = value;
                    });
                  },
                  currentIndex: index, selectedNumberStyle: const TextStyle(color: Colors.pink, fontSize: 15),),
                const Text(
                  ".",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                WheelSlider.number(
                  allowPointerTappable: false,
     scrollPhysics:  const FixedExtentScrollPhysics(),
                  verticalListHeight: 100,
                  totalCount: 1000,
                  initValue: 0,
                  horizontal: false,
                  unSelectedNumberStyle:
                      const TextStyle(fontSize: 15, color: Colors.white),
                  onValueChanged: (value) {
                    setState(() {
                      billValAfterDecimal=value;
                      index1 = value;
                    });
                  },
                  currentIndex: index1, selectedNumberStyle: const TextStyle(color: Colors.pink, fontSize: 15),),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              Text(
                "Split",
                style: TextStyle(color: Colors.pink, fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (splits > 1) {
                      --splits;
                    }
                  });
                },
                icon: const Icon(Icons.remove),
                iconSize: 35,
                color: Colors.pink,
              ),
              Text(
                splits.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    ++splits;
                  });
                },
                icon: const Icon(Icons.add),
                iconSize: 35,
                color: Colors.pink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
