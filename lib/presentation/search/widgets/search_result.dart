import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & Tv'),
        kHeight,
        Expanded(
          child: GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                return MainCard();
              })),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
