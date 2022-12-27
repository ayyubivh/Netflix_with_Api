import 'package:flutter/material.dart';

import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kwidth,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        kwidth
      ],
    );
  }
}
