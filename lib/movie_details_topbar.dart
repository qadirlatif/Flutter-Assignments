import 'package:flutter/material.dart';

class TopBarMovieDetails extends StatelessWidget {
  const TopBarMovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 48, 0, 0),
          child: CircleAvatar(
            backgroundColor: const Color.fromRGBO(107, 109, 108, 0.6),
            radius: 22,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 48, 16, 0),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Color.fromRGBO(107, 109, 108, 0.6),
            child: Icon(Icons.more_horiz),
          ),
        )
      ],
    ));
  }
}
