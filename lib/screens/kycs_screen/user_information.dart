import 'package:dateofbirth/dateofbirth.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  bool selected = false;
  int index = -1;
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          "User Information",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Enter your information below to complete the KYC",
                ),
              ),
              const Gap(36),
              Column(
                children: [
                  AuthTextFieldWidget(
                    labelText: 'First Name',
                    hintText: 'First Name',
                    icon: const Icon(Icons.email),
                    obscureText: false,
                    title: 'First Name',
                  ),
                  const Gap(16),
                  AuthTextFieldWidget(
                    labelText: 'Last Name',
                    hintText: 'Last Name',
                    icon: const Icon(Icons.email),
                    obscureText: false,
                    title: 'Last Name',
                  ),
                  const Gap(16),
                ],
              ),
              // !button
              // const Gap(36),
              // const Center(
              //   child: Text(
              //     'Please provide a proof of your identify',
              //   ),
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date Of Birth",
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
                    child: DOBInputField(
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      showLabel: true,
                      dateFormatType: DateFormatType.DDMMYYYY,
                      autovalidateMode: AutovalidateMode.always,
                      inputDecoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(36),
              const Text(
                'Type of Identify verification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(8),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      selected = !selected;
                      index = 1;
                      setState(() {});
                    },
                    child: (selected == true && index == 1)
                        ? Column(
                            children: [
                              DocumentWidget(
                                docType: 'Identity Card',
                                icon: Icons.perm_identity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD3D3E2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Gap(8),
                              AuthTextFieldWidget(
                                labelText: 'Identity Id',
                                hintText: 'Identity Id',
                                icon: const Icon(Icons.email),
                                obscureText: false,
                                title: 'Identity Id',
                              ),
                              Gap(24),
                            ],
                          )
                        : DocumentWidget(
                            docType: 'Identity Card',
                            icon: Icons.perm_identity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            ),
                          ),
                  ),
                  Gap(8),
                  Text("OR"),
                  Gap(8),
                  GestureDetector(
                    onTap: () {
                      selected = !selected;
                      index = 2;
                      setState(() {});
                    },
                    child: (selected == true && index == 2)
                        ? Column(
                            children: [
                              DocumentWidget(
                                docType: 'Passport',
                                icon: Icons.card_travel,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD3D3E2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Gap(8),
                              AuthTextFieldWidget(
                                labelText: 'Passport Id',
                                hintText: 'Passport Id',
                                icon: const Icon(Icons.email),
                                obscureText: false,
                                title: 'Passport Id',
                              ),
                            ],
                          )
                        : DocumentWidget(
                            docType: 'Passport',
                            icon: Icons.card_travel,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              // !!!!!!!!!!!
              // const Spacer(),
              const Gap(80),
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
                  child: Text("Complete Process"),
                ),
              ),
              // const Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
