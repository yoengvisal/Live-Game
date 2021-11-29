import 'package:flutter/material.dart';
import 'package:game/constants/constants.dart';
import 'package:game/widgets/Header.dart';
import 'package:game/widgets/action_buttom.dart';
import 'package:game/widgets/categories_list_view.dart';
import 'package:game/widgets/top_clip_list_view.dart';
import 'package:game/widgets/top_games_list.dart';
import 'package:game/widgets/treding_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _categories = [
    "Shooter",
    "Arcade",
    "Strategy",
    "Racing",
    "Action",
    "Simulation"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leadingWidth: 250,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://m.media-amazon.com/images/I/41ptrygt2HL._AC_SS450_.jpg'),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Hi Visal',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        actions: [
          ActionButtom(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Header(
                title: "Categories",
              ),
              SizedBox(
                height: 10,
              ),
              CategoryListView(categories: _categories),
              SizedBox(
                height: 10,
              ),
              Header(
                title: "Treding Streams",
              ),
              TredingListView(),
              Header(
                title: "Top Games",
              ),
              SizedBox(
                height: 10,
              ),
              TopGamesListView(),
              SizedBox(
                height: 10,
              ),
              Header(
                title: "Top Clips",
              ),
              SizedBox(height: 10,),
              TopClipsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
