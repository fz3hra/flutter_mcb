import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DocumentWidget extends StatelessWidget {
  IconData icon;
  String docType;
  Decoration decoration;
  DocumentWidget({
    super.key,
    required this.icon,
    required this.docType,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   border: Border.all(
      //     color: Colors.black,
      //     style: BorderStyle.solid,
      //     width: 1.0,
      //   ),
      // ),
      decoration: decoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                  // Icons.perm_identity,
                  icon),
              Gap(8),
              Text(
                // "Identity Card",
                docType,
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_down,
          ),
        ],
      ),
    );
  }
}
