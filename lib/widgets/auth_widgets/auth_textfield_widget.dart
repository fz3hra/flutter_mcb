import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AuthTextFieldWidget extends StatelessWidget {
  String title;
  String labelText, hintText;
  Widget? suffixIcon;
  Widget icon;
  bool obscureText;

  AuthTextFieldWidget({
    required this.title,
    super.key,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    required this.icon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Gap(8),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            children: [
              // icon,
              // const Icon(Icons.phone),
              const Gap(16),
              Expanded(
                child: TextFormField(
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: suffixIcon,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    // labelText: labelText,
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      fontFamily: 'poppins_bold',
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    labelStyle: const TextStyle(
                      fontFamily: 'poppins_regular',
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
