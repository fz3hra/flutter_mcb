import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionWidget extends StatelessWidget {
  String transactionName, amount, date;
  TransactionWidget({
    super.key,
    required this.transactionName,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            transactionName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Rs " + amount,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(4),
              const Text("6 months ago"),
            ],
          ),
        ],
      ),
    );
  }
}
