import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 72.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ImageConstants.logo,
              width: 200,
            ),
            const Text(
              "Registration",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // !textfields
            Gap(16),
            Column(
              children: [
                AuthTextFieldWidget(
                  labelText: 'Phone Number',
                  hintText: '+230 5 34242424',
                  icon: const Icon(Icons.phone),
                  obscureText: false,
                  title: 'Phone Number',
                ),
                const Gap(16),
                AuthTextFieldWidget(
                  labelText: 'Email',
                  hintText: 'email@example.com',
                  icon: const Icon(Icons.email),
                  obscureText: false,
                  title: 'Email Address',
                ),
                const Gap(16),
                AuthTextFieldWidget(
                  labelText: 'Password',
                  hintText: '*******',
                  icon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  obscureText: true,
                  title: 'Password',
                ),
              ],
            ),
            // !button
            Gap(16),
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
                child: Text("Registration"),
              ),
            ),
            Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have an account already? ",
                  style: TextStyle(
                    color: Color(0xFF9A9A9D),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.loginScreen,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFF938EFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
