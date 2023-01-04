import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/bg_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const GetHomeScreenData());
    });
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    );
                  } else if (state.hasError) {
                    return const Center(
                      child: Text(
                        'Oops..!!\n Error while getting data.!',
                        style: TextStyle(color: whiteColor),
                      ),
                    );
                  }
                  //released Past year-------------
                  final _releasedPastYear = state.pastYearMovieList.map(
                    (m) {
                      return '$imageAppendUrl${m.posterPath}';
                    },
                  ).toList();
                  //trending--------

                  final _trending = state.trendingMovieList.map(
                    (m) {
                      return '$imageAppendUrl${m.posterPath}';
                    },
                  ).toList();
                  //tense drama---------
                  final _tenseDrama = state.tenseDramaMovieList.map(
                    (m) {
                      return '$imageAppendUrl${m.posterPath}';
                    },
                  ).toList();
                  //south indian Cinemas---------

                  final _southIndianCinemas = state.southIndianMovieList.map(
                    (m) {
                      return '$imageAppendUrl${m.posterPath}';
                    },
                  ).toList();
                  _southIndianCinemas.shuffle();

                  // top 10 tv show--------

                  final _top10TvShow = state.trendingTvList.map(
                    (m) {
                      return '$imageAppendUrl${m.posterPath}';
                    },
                  ).toList();
                  _top10TvShow.shuffle();

                  //listview--------------

                  return ListView(
                    children: [
                      BgCard(),
                      KHeight,
                      MainTitleCard(
                        title: 'Released in the Past Year',
                        posterList: _releasedPastYear,
                      ),
                      KHeight,
                      MainTitleCard(
                          title: 'Trending Now', posterList: _trending),
                      KHeight,
                      NumberTitleCard(
                        posterList: _top10TvShow.sublist(0, 10),
                      ),
                      MainTitleCard(
                          title: 'Tense Dramas', posterList: _tenseDrama),
                      KHeight,
                      MainTitleCard(
                          title: 'South Indian Cinemas',
                          posterList: _southIndianCinemas),
                      KHeight,
                    ],
                  );
                },
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 80,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png',
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              Kwidth,
                              Container(
                                height: 30,
                                width: 30,
                                color: Colors.blue,
                              ),
                              Kwidth,
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('TV Shows', style: kHomeTileText),
                              Text('Movies', style: kHomeTileText),
                              Text('Categories', style: kHomeTileText),
                            ],
                          )
                        ],
                      ),
                    )
                  : KHeight
            ],
          ),
        );
      },
    ));
  }
}
