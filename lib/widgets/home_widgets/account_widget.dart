import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/models/account_model.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class AccountWidget extends StatelessWidget {
  AccountModel accounts;
  AccountWidget({
    super.key,
    required this.accounts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 16.0,
      ),
      padding: const EdgeInsets.all(16),
      height: 160,
      decoration: BoxDecoration(
        color: const Color(0xFFD3D2E4),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
          )
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.92,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                accounts.accountName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const Gap(8),
              Text(
                "Rs ${accounts.accountBalance}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: accounts.accountType.map(
                (accountTypes) {
                  return GestureDetector(
                    onTap: () {
                      if (accountTypes.accountTypeId == 1) {
                        // navigate to route add money
                        Navigator.pushNamed(
                          context,
                          Routes.addMoneyScreen,
                        );
                      } else if (accountTypes.accountTypeId == 2) {
                        // navigate to route deposit cheque
                        Navigator.pushNamed(
                          context,
                          Routes.depositScreen,
                        );
                      }
                    },
                    child: SelectionWidget(
                      icon: Icons.add,
                      name: accountTypes.accountType,
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
