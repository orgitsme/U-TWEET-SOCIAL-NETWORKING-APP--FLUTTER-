import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:u_tweet/constants/constants.dart';
import 'package:u_tweet/features/explore/view/explore_view.dart';
import 'package:u_tweet/features/notifications/views/notification_view.dart';
import 'package:u_tweet/features/tweet/widgets/tweet_list.dart';
import 'package:u_tweet/theme/pallete.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }

  static const List<Widget> bottomTabBarPages = [
    TweetList(),
    ExploreView(),
    NotificationView(),
  ];
}
