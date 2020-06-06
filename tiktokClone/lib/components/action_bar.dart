import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktokCline/tik_tok_icons_icons.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FollowAction(),
          SocialIcon(
            icon: TikTokIcons.heart,
            text: '2.2K',
          ),
          SocialIcon(
            icon: TikTokIcons.chat_bubble,
            text: '1.6K',
          ),
          SocialIcon(
            icon: TikTokIcons.reply,
            text: 'Share',
            isShare: true,
          ),
          MusicPlayerAction(),
        ],
      ),
    );
  }
}

class MusicPlayerAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 60.0,
      width: 60.0,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(11.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey[800],
                  Colors.grey[900],
                  Colors.grey[900],
                  Colors.grey[800]
                ],
                stops: [0.0, 0.4, 0.6, 1.0],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: CachedNetworkImage(
              imageUrl:
                  "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
          )
        ],
      ),
    );
  }
}

class FollowAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      child: Stack(
        children: <Widget>[
          ProfileImage(),
          PlusButton(),
        ],
      ),
    );
  }
}

class PlusButton extends StatelessWidget {
  const PlusButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 20.0,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 43, 84),
            borderRadius: BorderRadius.circular(15.0)),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 5.0,
      child: Container(
        padding: EdgeInsets.all(1.0),
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
        child: CachedNetworkImage(
          imageUrl:
              "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
          placeholder: (context, url) => new CircularProgressIndicator(),
          errorWidget: (context, url, error) => new Icon(Icons.error),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  SocialIcon({this.icon, this.text, this.isShare = false});
  final icon;
  final text;
  final isShare;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            size: isShare ? 25.0 : 35.0,
            color: Colors.grey[300],
          ),
          Text(
            text,
            style: TextStyle(fontSize: 10.0),
          )
        ],
      ),
      margin: EdgeInsets.only(top: 20.0),
    );
  }
}
