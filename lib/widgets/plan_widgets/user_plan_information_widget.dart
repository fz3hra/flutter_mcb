import 'package:flutter/material.dart';

class UserPlanInformationWidget extends StatelessWidget {
  String type, information;
  Color color;
  UserPlanInformationWidget({
    super.key,
    required this.type,
    required this.information,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: TextStyle(
              // color: Colors.white,
              color: color,
              fontSize: 14,
            ),
          ),
          Text(
            information,
            style: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
