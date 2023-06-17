import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class TransactionWidget extends StatelessWidget {
  String transactionName,
      amount,
      date,
      referenceId,
      personName,
      transactionType;
  TransactionWidget({
    super.key,
    required this.referenceId,
    required this.personName,
    required this.transactionType,
    required this.transactionName,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          TransactionDetailsWidget(
            amount: amount,
            date: date,
            personName: personName,
            referenceId: referenceId,
            transactionName: transactionName,
            transactionType: transactionType,
          ),
          Gap(16),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            decoration: BoxDecoration(
              color: Color(0xFFD3D2E4),
            ),
          ),
        ],
      ),
    );
  }
}
