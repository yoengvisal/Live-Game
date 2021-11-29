import 'package:flutter/material.dart';
import 'package:game/constants/constants.dart';
import 'package:game/data/top_games_data.dart';
import 'package:game/screens/video_screen.dart';
import 'package:game/widgets/detail_header.dart';

import 'channel_screen.dart';
import 'clip_screen.dart';

class DetailScreen extends StatefulWidget {
  final TopGames game;
  const DetailScreen({Key key, this.game}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(this.widget.game.name),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                  delegate: SliverChildListDelegate([
                DetailHeader(game: widget.game),
              ]))
            ];
          },
          body: Column(
            children: [
              Material(
                color: kPrimaryColor,
                child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorWeight: 1,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: 'Channels',
                      ),
                      Tab(
                        text: 'Videos',
                      ),
                      Tab(
                        text: 'Clips',
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ChannelScreen(),
                    VideoScreen(),
                    ClipScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
