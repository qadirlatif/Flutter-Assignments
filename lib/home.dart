import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'body.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar( title: const Center (child: Text("Flutter Assignment 1"),),),
      body: const Body(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
      ],
      
      )
    );
  }
}