import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/models/notification_model.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "View Notifications",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Column(
            children: NotificationModel.notificationsLists
                .map(
                  (notifications) => NotificationWidget(
                    notifications: notifications,
                  ),
                )
                .toList()
            // [
            //   NotificationWidget(),
            // ],
            ),
      ),
    );
  }
}
