import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Upgrade to Level 1",
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
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF938EFF),
              ),
              child: Column(
                children: [
                  // level currenrtly at
                  UserPlanInformationWidget(
                    type: 'Tier',
                    information: 'Tier 1',
                    color: Colors.white,
                  ),
                  // name of person
                  UserPlanInformationWidget(
                    type: 'Name',
                    information: 'John Doe',
                    color: Colors.white,
                  ),
                  // account number
                  UserPlanInformationWidget(
                    type: 'Account Number',
                    information: '3472947294',
                    color: Colors.white,
                  ),
                  // email
                  UserPlanInformationWidget(
                    type: 'Email',
                    information: 'johndoe@example.com',
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            //
            Gap(16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFF4F4F5),
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tier 1 (current Limit)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(16),
                  // Daily transaction limit
                  UserPlanInformationWidget(
                    type: 'Daily transaction limit',
                    information: 'Rs 200',
                    color: Colors.black,
                  ),
                  // Maximum account balance
                  UserPlanInformationWidget(
                    type: 'Maximum account balance',
                    information: 'Rs 400',
                    color: Colors.black,
                  ),
                  //
                  const Gap(16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD3D2E4),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "See all tiers",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFD3D2E4),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.userInformationPlanScreen,
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color(0xFF938EFF),
                ),
                child: Text("Upgrade to Tier 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
