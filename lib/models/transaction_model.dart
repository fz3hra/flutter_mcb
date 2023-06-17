class TransactionModel {
  String transactionName,
      amount,
      date,
      referenceId,
      personName,
      transactionType;
  TransactionModel({
    required this.transactionName,
    required this.amount,
    required this.date,
    required this.referenceId,
    required this.personName,
    required this.transactionType,
  });

  static List<TransactionModel> transactionModelLists = [
    TransactionModel(
      transactionName: 'Juice Account Transfer',
      amount: '20',
      date: '6th June 2023',
      referenceId: '1',
      personName: 'Mr John Doe',
      transactionType: 'cheque',
    ),
    TransactionModel(
      transactionName: 'Juice Transfer',
      amount: '10',
      date: '01 jaunary 2021',
      referenceId: '2',
      personName: 'Mr McWell',
      transactionType: 'bank',
    ),
    TransactionModel(
      transactionName: 'JuicePro Transfer',
      amount: '10',
      date: '01 jaunary 2021',
      referenceId: '3',
      personName: 'Mr Chris Lambert',
      transactionType: 'atm',
    ),
  ];
}
