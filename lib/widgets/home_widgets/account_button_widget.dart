import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mcb_app/models/account_model.dart';
import 'package:gap/gap.dart';

class AccountButtonWidget extends StatelessWidget {
  AccountTypeModel accountTypes;
  AccountButtonWidget({
    super.key,
    required this.accountTypes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 12.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              ),
              child: Image.network(
                accountTypes.icon,
                width: 40,
              ),
            ),
            Gap(4),
            Text(
              accountTypes.accountType,
            ),
          ],
        ),
      ),
    );
  }
}
