import 'package:flutter/material.dart';
import 'package:game/data/top_clip_data.dart';
import 'package:game/widgets/top_clip_card.dart';

class TopClipsListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemCount: topClips.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
        return Row(
          children: [
            TopClipCard(data: topClips[index]),
            SizedBox(height: 10,),
          ],
        );
      }),
    );
  }
}