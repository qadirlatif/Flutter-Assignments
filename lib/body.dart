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
              widgetcaller.customContainerWidget(
                  "It's not faith in technology it's faith in ",
                  "Technology",
                  0),
              widgetcaller.customContainerWidget(
                  "Great Things in business are never down by one person",
                  "Business",
                  25),
            ],
          ),
          Row(
            children: [
              widgetcaller.customContainerWidget(
                  "Design is not just what it looks like", "Design", 0),
              widgetcaller.customContainerWidget(
                  "Everyone here has the sense that right", "Imagination", 25)
            ],
          ),
          Row(
            children: [
              widgetcaller.customContainerWidget(
                  "Computers themselves, and software yet to be",
                  "Computers",
                  0),
              widgetcaller.customContainerWidget(
                  "Being the richest man is the cemenery doesn't", "Man", 25)
            ],
          )
        ],
      ),
    );
  }
}

class CustomWidget extends MaterialApp {
  Widget customContainerWidget(
      String qoute, String author, double marginfromtop) {
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
      margin: EdgeInsets.fromLTRB(15, marginfromtop, 10, 10),
      child: Container(
        child: Column(
          children: [
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
