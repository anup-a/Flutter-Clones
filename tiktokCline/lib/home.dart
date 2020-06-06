import 'package:flutter/material.dart';
import 'package:tiktokCline/components/action_bar.dart';
import 'package:tiktokCline/components/bottom_nav.dart';
import 'package:tiktokCline/components/top_section.dart';
import 'package:tiktokCline/components/video_desc.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/tiktok.png'), fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              // Top Section
              TopSection(),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    VideoDescription(),
                    ActionBar(),
                  ],
                ),
              ),
              BottomNavigation()
            ],
          ),
        ));
  }
}
