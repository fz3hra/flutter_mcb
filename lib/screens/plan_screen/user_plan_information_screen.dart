import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/repositories/create_user_repository.dart';
import 'package:flutter_mcb_app/utils/api_constants.dart';
import 'package:flutter_mcb_app/utils/api_constants.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class UserPlanInformationScreen extends StatefulWidget {
  const UserPlanInformationScreen({super.key});

  @override
  State<UserPlanInformationScreen> createState() =>
      _UserPlanInformationScreenState();
}

class _UserPlanInformationScreenState extends State<UserPlanInformationScreen> {
  TextEditingController planController = TextEditingController();
  TextEditingController interestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "User Plan Information",
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
            Column(
              children: [
                AuthTextFieldWidget(
                  labelText: 'Please enter your plan name',
                  hintText: 'Plan name',
                  icon: const Icon(Icons.email),
                  obscureText: false,
                  title: 'Please enter your plan name',
                  controller: planController,
                ),
                const Gap(16),
                AuthTextFieldWidget(
                  labelText: "How much interest would you like to add?",
                  hintText: '15%',
                  icon: const Icon(Icons.email),
                  obscureText: false,
                  title: "How much interest would you like to add?",
                  controller: interestController,
                ),
              ],
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color(0xFF938EFF),
                ),
                child: Text("Confirm"),
              ),
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}
