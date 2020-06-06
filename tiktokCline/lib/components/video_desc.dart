import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(left: 20.0),
      height: 90.0,
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            '@JaneDoe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          Text(
            'Video Title - & Cool Description',
            style: TextStyle(fontSize: 15.0),
          ),
          Text(
            '🎶 Music Video - Artist Name ',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    ));
  }
}
