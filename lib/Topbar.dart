// ignore: file_names
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(16, 48, 0, 0),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/300',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 48, 16, 0),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Color.fromRGBO(107, 109, 108, 0.8),
            child: Icon(
              Icons.search,
              color: Color.fromRGBO(191, 191, 191, 1),
            ),
          ),
        )
      ],
    ));
  }
}
