import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Label extends StatelessWidget {
  Label({super.key, required this.label});
  String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: Text(
            label.toString(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
          child: Text(
            "See all",
            style: TextStyle(
                color: Colors.grey,
                // fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
      ],
    );
  }
}
