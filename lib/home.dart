import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: IconButton(
            icon: const Icon(Icons.camera_enhance_rounded),
            alignment: const Alignment(58, 0),
            onPressed: () {}),
      ),
      body: const Body(),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("menu"),
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
            ListTile(
              title: Text("home"),
            )
          ],
        ),
      ),
    );
  }
}
