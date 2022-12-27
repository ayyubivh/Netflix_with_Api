import 'dart:ui';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 200,
              width: 40,
            ),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              width: 132,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kradius10,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.themoviedb.org/t/p/w220_and_h330_face/hYqOjJ7Gh1fbqXrxlIao1g8ZehF.jpg')),
              ),
            ),
          ],
        ),
        Positioned(
          top: 80,
          left: 15,
          bottom: 0,
          child: BorderedText(
            strokeColor: kwhiteColor,
            strokeWidth: 4.5,
            child: Text('${index + 1}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.white,
                )),
          ),
        )
      ],
    );
  }
}
