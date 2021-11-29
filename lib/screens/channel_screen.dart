import 'package:flutter/material.dart';
import 'package:game/constants/constants.dart';
import 'package:game/widgets/Header.dart';
import 'package:game/widgets/top_clip_list_view.dart';
import 'package:game/widgets/treding_list_view.dart';

class ChannelScreen extends StatelessWidget {
  const ChannelScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Header(
                title: "Top Streamers",
              ),
              SizedBox(
                height: 10,
              ),
              TredingListView(),
              SizedBox(
                height: 10,
              ),
              Header(
                title: "Most Views",
              ),
              SizedBox(
                height: 10,
              ),
              TopClipsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
