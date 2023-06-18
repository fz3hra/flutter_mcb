import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/models/account_model.dart';
import 'package:flutter_mcb_app/models/transaction_model.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          "My Dashboard",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              Routes.notificationScreen,
            ),
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                EvaIcons.bellOutline,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: AccountModel.accountLists.map(
                    (accounts) {
                      return AccountWidget(
                        accounts: accounts,
                      );
                    },
                  ).toList(),
                ),
              ),
              // service
              const Gap(24),
              const Text(
                "Services",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        Routes.serviceguideScreen,
                      ),
                      child: ServiceWidget(
                        icon: Icons.shop,
                        serviceName: 'Savings',
                      ),
                    ),
                    Gap(16),
                    ServiceWidget(
                      icon: Icons.shop,
                      serviceName: 'Service Name',
                    ),
                  ],
                ),
              ),
              const Gap(24),
              // plans
              const Text(
                "Plans",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                        context,
                        Routes.planDetailedInformationScreen,
                      ),
                      child: PlanWidget(
                        planName: 'Plan 1',
                        planImage: ImageConstants.level1image,
                        interest: '20',
                      ),
                    ),
                    Gap(8),
                    PlanWidget(
                      planName: 'Plan 2',
                      planImage: ImageConstants.level2image,
                      interest: '20',
                    ),
                  ],
                ),
              ),
              // plan history
              const Gap(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Transaction History",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      Routes.transactionHistoryScreen,
                    ),
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(8),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: TransactionModel.transactionModelLists.length,
                itemBuilder: (BuildContext context, int index) {
                  var transactions =
                      TransactionModel.transactionModelLists[index];
                  return TransactionWidget(
                    referenceId: transactions.referenceId,
                    personName: transactions.personName,
                    transactionType: transactions.transactionType,
                    transactionName: transactions.transactionName,
                    amount: transactions.amount,
                    date: transactions.date,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
