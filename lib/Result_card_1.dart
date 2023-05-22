import 'package:flutter/material.dart';
import 'package:qouateapp/tipcalculator.dart';

class Result_Card_1 extends StatelessWidget {
  Result_Card_1({super.key, required this.calculator});
  Tipcalculator calculator;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0))
                    ],
                  ),
                  Text(
                    calculator
                        .perperson(calculator.Bill(calculator),
                            calculator.tipPercentage, calculator.splits)
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
                            .perperson(calculator.Bill(calculator),
                                calculator.tipPercentage, calculator.splits)
                            .split('.')[1],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("SUBTOTAL",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      Text(
                          "\$ ${(calculator.Bill(calculator) / calculator.splits).toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      const Text("TIP",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      Text(
                          "\$ ${((calculator.Bill(calculator) * calculator.tipPercentage) / calculator.splits).toStringAsFixed(2)}",
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
    );
  }
}
