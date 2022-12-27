import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';

import '../fast_laugh/widgets/number_title_card.dart';
import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, value, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: const [
                        BackgroundCard(),
                        kHeight,
                        MainTitleCard(title: 'Released in the past Year'),
                        kHeight,
                        MainTitleCard(title: 'Trending Now'),
                        kHeight,
                        NumberTitleCard(),
                        kHeight,
                        MainTitleCard(title: 'Tense Dramas'),
                        kHeight,
                        MainTitleCard(title: 'South Indian Cinema')
                      ],
                    ),
                    scrollNotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                      width: 70,
                                      height: 70,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                    ),
                                    kwidth,
                                    Container(
                                      height: 30,
                                      width: 30,
                                      color: Colors.blue,
                                    ),
                                    kwidth
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Tv Shows',
                                      style: KHomeTitleText,
                                    ),
                                    Text(
                                      'Movies',
                                      style: KHomeTitleText,
                                    ),
                                    Text(
                                      'Categories',
                                      style: KHomeTitleText,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        : kHeight
                  ],
                ),
              );
            }));
  }
}
