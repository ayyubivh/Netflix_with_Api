import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        SearchTextTItle(
          title: 'Top Searches',
        ),
        KHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Oops..!!\nError While Loading..!!'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('Oops..!!\n List is Empty...'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    final movie = state.idleList[index];
                    return TopSearchList(
                      imageUrl: '$imageAppendUrl${movie.posterPath}',
                      title: movie.title ?? 'Not Provided',
                    );
                  }),
                  separatorBuilder: ((context, index) => KHeight20),
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchList extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchList({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.38,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        )),
        const Icon(
          Icons.play_circle_outlined,
          size: 50,
          color: Colors.white,
        ),
      ],
    );
  }
}
