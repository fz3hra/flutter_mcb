import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileInformationWidget extends StatelessWidget {
  String type, userInfo;
  ProfileInformationWidget({
    super.key,
    required this.type,
    required this.userInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 90.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              type,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          Gap(24),
          Text(
            userInfo,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
