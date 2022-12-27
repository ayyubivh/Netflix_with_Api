import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

import '../../../core/constants.dart';
import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widgets.dart';
import '../screen_new_and_hot.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 400,
          width: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("FEB", style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text(
                "11",
                style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 35,
                    color: kwhiteColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 450,
          width: size.width - 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TALL GIRL 2',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1.5),
                  ),
                  Row(
                    children: const [
                      CustomButtonWidget(
                          textSize: 10,
                          iconSize: 18,
                          icon: Icons.notifications_none_outlined,
                          title: 'Remind me'),
                      kwidth, kwidth,
                      CustomButtonWidget(
                          textSize: 10,
                          iconSize: 18,
                          icon: Icons.info_outline,
                          title: 'info'),
                      kwidth //
                    ],
                  )
                ],
              ),
              const Text('Coming on friday'),
              kHeight20,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kHeight,
              const Text(
                'Landing the lead in the school musical is a dream come true for Jodi, until prssure sends her confidence - and relationship into a tallspin.',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}
