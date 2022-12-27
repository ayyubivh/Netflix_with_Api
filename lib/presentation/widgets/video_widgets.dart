import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../new_and_hot/widgets/everyOnes_watching_widget.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            tempMainImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    color: kwhiteColor,
                    size: 20,
                  ))),
        )
      ],
    );
  }
}
