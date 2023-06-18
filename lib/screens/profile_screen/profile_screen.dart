import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              ImageConstants.profileImage,
              width: 100,
            ),
            Gap(54),
            ProfileInformationWidget(
              type: "Name",
              userInfo: 'John Doe',
            ),
            Gap(14),
            ProfileInformationWidget(
              type: "Email",
              userInfo: 'johndoe@gmail.com',
            ),
            Gap(14),
            ProfileInformationWidget(
              type: "Phone",
              userInfo: '59040454',
            ),
            Gap(14),
            ProfileInformationWidget(
              type: "DOB",
              userInfo: '06/04/2000',
            ),
            Gap(80),
            Container(
              width: MediaQuery.of(context).size.width * 0.54,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).popUntil((route) => route.isFirst),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Color(0xFF938EFF),
                ),
                child: Text("Update"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
