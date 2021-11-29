import 'package:flutter/material.dart';
import 'package:game/data/trending_data.dart';
import 'package:game/widgets/streams_card.dart';

class TredingListView extends StatelessWidget {
  const TredingListView({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: trendingStreams.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
        return Row(
          children: [
            StreamCard(data: trendingStreams[index]),
            SizedBox(width: 10,),
          ],
        );
      }),
    );
  }
}