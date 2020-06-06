import 'package:flutter/material.dart';
import 'package:tiktokCline/tik_tok_icons_icons.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(TikTokIcons.home, color: Colors.white, size: 20.0),
          Icon(TikTokIcons.search, color: Colors.white, size: 20.0),
          TikTokButton(),
          Icon(TikTokIcons.messages, color: Colors.white, size: 20.0),
          Icon(TikTokIcons.profile, color: Colors.white, size: 20.0)
        ],
      ),
    );
  }
}

class TikTokButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.0,
      width: 45.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 38.0,
            margin: EdgeInsets.only(left: 10.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 45, 108),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Container(
              width: 38.0,
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 211, 234),
                  borderRadius: BorderRadius.circular(7.0))),
          Center(
            child: Container(
              width: 34.0,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.0)),
              child: Icon(
                Icons.add,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
