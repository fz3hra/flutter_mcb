import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/models/transaction_model.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "View recent transactions",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: TransactionModel.transactionModelLists.length,
          itemBuilder: (BuildContext context, int index) {
            var transactions = TransactionModel.transactionModelLists[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.0,
                    color: Color(0xFFD3D2E4),
                  ),
                ],
              ),
              child: TransactionDetailsWidget(
                referenceId: transactions.referenceId,
                personName: transactions.personName,
                transactionType: transactions.transactionType,
                transactionName: transactions.transactionName,
                amount: transactions.amount,
                date: transactions.date,
              ),
            );
          },
        ),
      ),
    );
  }
}
