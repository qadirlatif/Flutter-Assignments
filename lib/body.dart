import 'tipcalculator.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'package:flutter/material.dart';
import 'Result_card_1.dart';
import 'Result_card_2.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;
  int index1 = 0;
  int currentindex = 0;
  Tipcalculator calculator = Tipcalculator(1, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Result_Card_1(calculator: calculator),
          const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
          Result_card_2(calculator: calculator),
          Wrap(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(74, 74, 74, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("10%"),
                  onPressed: () {
                    setState(() {
                      calculator.tipPercentage = 0.1;
                    });
                  }),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(74, 74, 74, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("15%"),
                  onPressed: () {
                    setState(() {
                      calculator.tipPercentage = 0.15;
                    });
                  }),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(74, 74, 74, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text("20%"),
                  onPressed: () {
                    setState(() {
                      currentindex = 0;

                      calculator.tipPercentage = 0.2;
                    });
                  }),
              const Padding(padding: EdgeInsets.all(5)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(74, 74, 74, 1),
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
                style: TextStyle(
                    color: Color.fromRGBO(232, 61, 118, 1), fontSize: 20),
              ),
            ],
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "\$",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          --index;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_up),
                      color: const Color.fromRGBO(232, 61, 118, 1),
                    ),
                    WheelSlider.number(
                      allowPointerTappable: false,
                      scrollPhysics: const FixedExtentScrollPhysics(),
                      verticalListHeight: 100,
                      totalCount: 1000,
                      initValue: 0,
                      horizontal: false,
                      unSelectedNumberStyle: const TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(130, 133, 130, 1)),
                      onValueChanged: (value) {
                        setState(() {
                          calculator.billValBeforeDecimal = value;
                          index = value;
                        });
                      },
                      currentIndex: index,
                      selectedNumberStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          ++index;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_down),
                      color: const Color.fromRGBO(232, 61, 118, 1),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          --index1;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_up),
                      color: const Color.fromRGBO(232, 61, 118, 1),
                    ),
                    WheelSlider.number(
                      allowPointerTappable: true,
                      scrollPhysics: const FixedExtentScrollPhysics(),
                      verticalListHeight: 100,
                      totalCount: 1000,
                      initValue: 0,
                      horizontal: false,
                      unSelectedNumberStyle: const TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(130, 133, 130, 1)),
                      onValueChanged: (value) {
                        setState(() {
                          calculator.billValAfterDecimal = value;
                          index1 = value;
                        });
                      },
                      currentIndex: index1,
                      selectedNumberStyle:
                          const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          ++index1;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_down),
                      color: const Color.fromRGBO(232, 61, 118, 1),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              Text(
                "Split",
                style: TextStyle(
                    color: Color.fromRGBO(232, 61, 118, 1), fontSize: 20),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (calculator.splits > 1) {
                      --calculator.splits;
                    }
                  });
                },
                icon: const Icon(Icons.remove_circle_outline),
                iconSize: 35,
                color: const Color.fromRGBO(232, 61, 118, 1),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(7, 0, 7, 0)),
              Text(
                calculator.splits.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(7, 0, 7, 0)),
              IconButton(
                onPressed: () {
                  setState(() {
                    ++calculator.splits;
                  });
                },
                icon: const Icon(Icons.add_circle_outline),
                iconSize: 35,
                color: const Color.fromRGBO(232, 61, 118, 1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
