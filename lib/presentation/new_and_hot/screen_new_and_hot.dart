import 'package:flutter/material.dart';

import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widgets.dart';

import '../../core/constants.dart';
import 'widgets/coming_soon_widget.dart';
import 'widgets/everyOnes_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
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
            bottom: TabBar(
                unselectedLabelColor: kwhiteColor,
                labelColor: kBlackColor,
                isScrollable: true,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(color: kwhiteColor, borderRadius: kradius30),
                tabs: const [
                  Tab(text: '🍿 Coming Soon'),
                  Tab(text: "👀 Everyone's Watching"),
                ]),
          ),
        ),
        body: TabBarView(
          children: [
            _buildCominSoon(),
            _buildEveryOnesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildCominSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryOnesWatching() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) =>
          const EveryOneWatchingWidget(),
      itemCount: 10,
    );
  }
}
