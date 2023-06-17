import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlanWidget extends StatelessWidget {
  String planImage, planName, interest;
  PlanWidget({
    super.key,
    required this.planImage,
    required this.planName,
    required this.interest,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            planImage,
            width: 54.0,
          ),
          const Gap(8),
          Text(
            planName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(4),
          Text(
            '${interest}% per annum',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
