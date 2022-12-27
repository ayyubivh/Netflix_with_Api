import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';
import 'custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(kMainImage))),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomButtonWidget(icon: Icons.add, title: 'My List'),
              _playButton(),
              const CustomButtonWidget(icon: Icons.info, title: 'Info'),
            ],
          ),
        )
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'play',
          style: TextStyle(
              fontSize: 20, color: kBlackColor, fontWeight: FontWeight.bold),
        ),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhiteColor)),
    );
  }
}
