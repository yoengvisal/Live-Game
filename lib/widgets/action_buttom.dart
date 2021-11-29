
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButtom extends StatelessWidget {
  const ActionButtom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Ink(
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).accentColor,
          ),
          child: Icon(
            Icons.notes_outlined,
          ),
        ),
      ),
    );
  }
}
