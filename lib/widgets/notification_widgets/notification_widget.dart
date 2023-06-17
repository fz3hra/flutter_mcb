import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/models/notification_model.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:gap/gap.dart';

class NotificationWidget extends StatelessWidget {
  NotificationModel notifications;
  NotificationWidget({
    super.key,
    required this.notifications,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16.0,
      ),
      child: Row(
        children: [
          Image.asset(
            ImageConstants.chequeImage,
            width: 40,
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  // ! full name dynamic
                  text: TextSpan(
                    text: notifications.fullName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      const TextSpan(
                        text: ' wants to cash a cheque of ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      // ! full name dynamic
                      TextSpan(
                        text: 'Rs ${notifications.chequeAmount}',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                // !BuTTONS
                const Gap(4),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color(0xFFF4F4F5),
                      ),
                      child: const Text(
                        "Decline",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Gap(16),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Color(0xFF938EFF),
                      ),
                      child: const Text(
                        "Accept",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
