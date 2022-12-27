import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //leftside
                CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          color: kwhiteColor,
                          size: 30,
                        ))),
                //Rightside
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/7WUHnWGx5OO145IRxPDUkQSh4C7.jpg",
                        ),
                      ),
                    ),
                    VideoActionsWidgets(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionsWidgets(icon: Icons.add, title: "My List"),
                    VideoActionsWidgets(icon: Icons.share, title: "Share"),
                    VideoActionsWidgets(icon: Icons.play_arrow, title: 'Play')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidgets(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: kwhiteColor, fontSize: 14),
          )
        ],
      ),
    );
  }
}
