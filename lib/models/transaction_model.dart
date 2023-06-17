class TransactionModel {
  String transactionName, amount, date;
  TransactionModel({
    required this.transactionName,
    required this.amount,
    required this.date,
  });

  static List<TransactionModel> transactionModelLists = [
    TransactionModel(
      transactionName: 'transaction 1',
      amount: '20',
      date: '6th June 2023',
    ),
    TransactionModel(
      transactionName: 'transaction 2',
      amount: '10',
      date: '01 jaunary 2021',
    ),
    TransactionModel(
      transactionName: 'transaction 3',
      amount: '10',
      date: '01 jaunary 2021',
    ),
    TransactionModel(
      transactionName: 'transaction 4',
      amount: '10',
      date: '01 jaunary 2021',
    ),
    TransactionModel(
      transactionName: 'transaction 5',
      amount: '10',
      date: '01 jaunary 2021',
    ),
    TransactionModel(
      transactionName: 'transaction 6',
      amount: '10',
      date: '01 jaunary 2021',
    ),
  ];
}
