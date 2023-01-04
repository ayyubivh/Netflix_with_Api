import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_btn_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  final String posterPath;
  final String movieName;
  final String description;
  const EveryoneWatchingWidget({
    Key? key,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        Text(
          movieName,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        KHeight,
        Text(
          description,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: greyColor),
        ),
        KHeight50,
        VideoWidget(url: posterPath),
        KHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomBtnWidget(title: 'Share', icon: Icons.send_outlined),
            Kwidth,
            CustomBtnWidget(title: 'Add', icon: Icons.add),
            Kwidth,
            CustomBtnWidget(title: 'Play', icon: Icons.play_arrow),
            Kwidth,
          ],
        )
      ],
    );
  }
}
