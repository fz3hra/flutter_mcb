import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionDetailsWidget extends StatelessWidget {
  String transactionName,
      amount,
      date,
      referenceId,
      // personName,
      transactionType;
  TransactionDetailsWidget({
    super.key,
    required this.referenceId,
    // required this.personName,
    required this.transactionType,
    required this.transactionName,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transactionName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              // Gap(4),
              // Text(
              //   personName,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 16,
              //     fontWeight: FontWeight.w400,
              //   ),
              // ),
              Gap(4),
              Text(
                "ref: ${referenceId}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Gap(4),
              Text(
                date,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              )
            ],
          ),
          Column(
            children: [
              transactionName == "JuicePro Transfer"
                  ? Text(
                      "+ Rs ${amount}",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      "- Rs ${amount}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
            ],
          ),
        ],
      ),
    );
  }
}
