import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_tweet/constants/constants.dart';
import 'package:u_tweet/core/enums/notification_type_enum.dart';
import 'package:u_tweet/models/notification_model.dart' as model;
import 'package:u_tweet/theme/pallete.dart';

class NotificationTile extends StatelessWidget {
  final model.Notification notification;
  const NotificationTile({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          notification.notificationType == NotificationType.follow
              ? const Icon(Icons.person, color: Pallete.blueColor)
              : notification.notificationType == NotificationType.like
              ? SvgPicture.asset(
                AssetsConstants.likeFilledIcon,
                color: Pallete.redColor,
                height: 20,
              )
              : notification.notificationType == NotificationType.retweet
              ? SvgPicture.asset(
                AssetsConstants.retweetIcon,
                color: Pallete.whiteColor,
                height: 20,
              )
              : null,
      title: Text(notification.text),
    );
  }
}
