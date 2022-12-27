import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

import 'main_card.dart';
import 'main_tile.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainCards()),
          ),
        ),
      ],
    );
  }
}
