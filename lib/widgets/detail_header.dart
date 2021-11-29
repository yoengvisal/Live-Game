
import 'package:flutter/material.dart';
import 'package:game/data/top_games_data.dart';
import 'package:game/widgets/game_category.dart';

class DetailHeader extends StatelessWidget {
  final TopGames game;
  const DetailHeader({Key key, this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(this.game.thumbnail),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GamesCategory(game: this.game),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      this.game.viewers +
                          "Viewers * " +
                          this.game.followers +
                          "Followers",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'A 5v5 character-base tactical shooter',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Follow'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
