import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  IconData icon;
  String name;
  SelectionWidget({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          // Icon(Icons.add),
          Icon(icon),
          Text(name),
        ],
      ),
    );
  }
}
