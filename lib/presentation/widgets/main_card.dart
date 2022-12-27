import 'package:flutter/material.dart';

import '../../core/constants.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: kradius10,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w220_and_h330_face/wawP3mOUeRBrAtnbPwWK5eFaMdV.jpg')),
            ),
          ),
          kwidth
        ],
      ),
    );
  }
}
