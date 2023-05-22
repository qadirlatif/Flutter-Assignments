import 'tipcalculator.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int index = 0;
  int index1 = 0;
  int splits = 1;
  int billValBeforeDecimal = 0;
  int billValAfterDecimal = 0;
  int currentindex = 0;
  

  double tippercentage = 0;
  Tipcalculator calculator = Tipcalculator(0, 0, 0);
  double bill(int billValBeforeDecimal, int billValAfterDecimal) {
    return double.parse("$billValBeforeDecimal.$billValAfterDecimal");
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
              color: const Color.fromRGBO(74, 74, 74, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Text("PER PERSON",
                        style: TextStyle(
                            color: Color.fromRGBO(232, 61, 118, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "\$",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0))
                          ],
                        ),
                        Text(
                          calculator
                              .perperson(
                                  bill(billValBeforeDecimal,
                                      billValAfterDecimal),
                                  tippercentage,
                                  splits)
                              .split('.')[0],
                          style: const TextStyle(
                              fontSize: 50, color: Colors.white),
                        ),
                        const Text(".",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white)),
                        Column(
                          children: [
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                            Text(
                              calculator
                                  .perperson(
                                      bill(billValBeforeDecimal,
                                          billValAfterDecimal),
                                      tippercentage,
                                      splits)
                                  .split('.')[1],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("SUBTOTAL",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                                "\$ ${(bill(billValBeforeDecimal, billValAfterDecimal) / splits).toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                            const Text("TIP",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                                "\$ ${((bill(billValBeforeDecimal, billValAfterDecimal) * tippercentage) / splits).toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 215, 0),
                      child: Text(
                        "TOTAL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 5)),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(74, 74, 74, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 120,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "\$",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0))
                          ],
                        ),
                        Text(
                          calculator
                              .totalamount(
                                  bill(billValBeforeDecimal,
                                      billValAfterDecimal),
                                  tippercentage)
                              .split('.')[0],
                          style: const TextStyle(
                              fontSize: 50, color: Colors.white),
                        ),
                        const Text(".",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white)),
                        Column(
                          children: [
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                            Text(
                              calculator
                                  .totalamount(
                                    bill(billValBeforeDecimal,
                                        billValAfterDecimal),
                                    tippercentage,
                                  )
                                  .split('.')[1],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("SUBTOTAL",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                                "\$ ${(bill(billValBeforeDecimal, billValAfterDecimal)).toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            const Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                            const Text("TIP",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                            Text(
                                "\$ ${((bill(billValBeforeDecimal, billValAfterDecimal) * tippercentage)).toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 215, 0),
                      child: Text(
                        "TOTAL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
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
                      tippercentage = 0.1;
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
                      tippercentage = 0.15;
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

                      tippercentage = 0.2;
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
                          billValBeforeDecimal = value;
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
                          billValAfterDecimal = value;
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
                    if (splits > 1) {
                      --splits;
                    }
                  });
                },
                icon: const Icon(Icons.remove_circle_outline),
                iconSize: 35,
                color: const Color.fromRGBO(232, 61, 118, 1),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(7, 0, 7, 0)),
              Text(
                splits.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Padding(padding: EdgeInsets.fromLTRB(7, 0, 7, 0)),
              IconButton(
                onPressed: () {
                  setState(() {
                    ++splits;
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
