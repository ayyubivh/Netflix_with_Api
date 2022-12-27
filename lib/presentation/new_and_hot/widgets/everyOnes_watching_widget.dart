import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../home/widgets/custom_button.dart';
import '../../widgets/video_widgets.dart';

class EveryOneWatchingWidget extends StatelessWidget {
  const EveryOneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          " This hit sitcom follows the merry misadventure of six 2d-something pals as they navigate the pitfalls of work, life and love in 1990's Manhattan",
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
        kHeight50,
        const VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
                textSize: 15, iconSize: 26, icon: Icons.share, title: 'Share'),
            kwidth,
            CustomButtonWidget(
                textSize: 15, iconSize: 28, icon: Icons.add, title: ' My List'),
            kwidth,
            CustomButtonWidget(
                textSize: 15,
                iconSize: 28,
                icon: Icons.play_arrow,
                title: 'Play'),
            kwidth,
          ],
        )
      ],
    );
  }
}

const tempMainImage =
    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/k47JEUTQsSMN532HRg6RCzZKBdB.jpg";
