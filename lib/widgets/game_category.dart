import 'package:flutter/material.dart';
import 'package:game/data/top_games_data.dart';

class GamesCategory extends StatelessWidget {
  final TopGames game;

  const GamesCategory({Key key, this.game}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(0xffFFC947),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(this.game.type1),
          ),
        ),
        SizedBox(
          width: 10,
        ),
         Container(
          width: 100,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Color(0xff77ACF1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(this.game.type2),
          ),
        ),
      ],
    );
  }
}
