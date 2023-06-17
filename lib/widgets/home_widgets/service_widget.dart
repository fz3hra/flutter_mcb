import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ServiceWidget extends StatelessWidget {
  IconData icon;
  String serviceName;
  ServiceWidget({
    super.key,
    required this.icon,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 12.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 1.0,
            ),
          ),
          child: Icon(
            icon,
            color: Color(0xFF938EFF),
          ),
        ),
        Gap(4),
        Text(serviceName),
      ],
    );
  }
}
