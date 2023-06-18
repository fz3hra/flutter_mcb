import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var firstValue, secondValue;
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    if (args != null) {
      firstValue = args["firstValue"];
      secondValue = args["secondValue"];
    }
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 40.0,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImageConstants.confirmationImage,
              width: 240,
            ),
            Column(
              children: [
                Text(
                  "Rs ${secondValue}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8),
                const Text(
                  "Payment Successful",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                const Gap(8),
                RichText(
                  text: TextSpan(
                    text: 'Transaction Number',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    children: [
                      TextSpan(
                        text: ' $firstValue',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(40),
            Container(
              // width: 180,
              child: const Text(
                "Please confirm if you would like to proceed with the deposit of the cheque",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xFFF4F4F5),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Gap(16),
                ElevatedButton(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
