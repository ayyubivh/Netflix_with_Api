import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_btn_widget.dart';

class BgCard extends StatelessWidget {
  const BgCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 650,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(kMainImg))),
        ),
        Positioned(
          left: 0,
          bottom: 7,
          right: 0,
          child: Container(
            // color: Colors.black.withOpacity(.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBtnWidget(icon: Icons.add, title: 'My List'),
                _PlayBtn(),
                CustomBtnWidget(title: 'info', icon: Icons.info_outline)
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _PlayBtn() {
    return TextButton.icon(
        onPressed: () {},
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(whiteColor)),
        icon: const Icon(
          Icons.play_arrow,
          size: 30,
          color: blackColor,
        ),
        label: const Text(
          'Play',
          style: TextStyle(fontSize: 20, color: blackColor),
        ));
  }
}
