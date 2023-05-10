import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    CustomWidget widgetcaller = CustomWidget();
    return Container(
      height: 800,
      width: 800,
      child: Column(
        children: [
          Row(
            children: [
              widgetcaller.containerType1(
                  "It's not faith in technology it's faith in ", "Technology"),
              widgetcaller.containersType2(
                  "Great Things in business are never down by one person",
                  "Business"),
            ],
          ),
          Row(
            children: [
              widgetcaller.containerType1("Design is not just what it looks like", "Design"),
              widgetcaller.containersType2(
                  "Everyone here has the sense that right", "Imagination")
            ],
          ),
          Row(
            children: [
              widgetcaller.containerType1(
                  "Computers themselves, and software yet to be", "Computers"),
              widgetcaller.containersType2(
                  "Being the richest man is the cemenery doesn't", "Man")
            ],
          )
        ],
      ),
    );
  }
}

class CustomWidget extends MaterialApp {
  Widget containerType1(String qoute, String author) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 20.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      height: 150,
      width: 150,
      margin: const EdgeInsets.fromLTRB(15, 0, 10, 10),
      child: Container(
        child: Column(
          children: [
            const Text(""),
            Text(
              qoute,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 18
                  ),
            ),
            Text(
              author,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget containersType2(String qoute, String author) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 20.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      height: 150,
      width: 150,
      margin: const EdgeInsets.fromLTRB(15, 25, 10, 10),
      child: Container(
        child: Column(
          children: [
            const Text(""),
            Text(
              qoute,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              author,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
