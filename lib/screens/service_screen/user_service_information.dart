import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class UserServiceInformation extends StatefulWidget {
  const UserServiceInformation({super.key});

  @override
  State<UserServiceInformation> createState() => _UserServiceInformationState();
}

class _UserServiceInformationState extends State<UserServiceInformation> {
  TextEditingController serviceNameController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  TextEditingController durationController = TextEditingController();

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
          "Saving Target",
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
                  labelText: 'Please enter your service name',
                  hintText: 'Plan name',
                  icon: const Icon(Icons.email),
                  obscureText: false,
                  title: 'Please enter your service name',
                  controller: serviceNameController,
                ),
                const Gap(16),
                AuthTextFieldWidget(
                  labelText:
                      "What's your overall target amount for this service",
                  hintText: 'Min Rs 0 - Max Rs 200 000',
                  icon: const Icon(Icons.email),
                  obscureText: false,
                  title: "What's your overall target amount for this service",
                  controller: amountController,
                ),
                const Gap(16),
                AuthTextFieldWidget(
                  labelText:
                      "What duration would you like to have on this service?",
                  hintText: '6 months',
                  icon: const Icon(Icons.email),
                  obscureText: false,
                  title:
                      "What duration would you like to have on this service?",
                  controller: durationController,
                ),
              ],
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.of(context).popUntil((route) => route.isFirst),
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
