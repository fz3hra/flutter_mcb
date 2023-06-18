class AccountModel {
  String accountNumber, accountName, accountBalance;
  List<AccountTypeModel> accountType;
  AccountModel({
    required this.accountNumber,
    required this.accountName,
    required this.accountBalance,
    required this.accountType,
  });

  static List<AccountModel> accountLists = [
    AccountModel(
      accountNumber: '1',
      accountName: 'Main Account',
      accountBalance: '200,000',
      accountType: [
        AccountTypeModel(
          accountType: 'Add Money',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 1,
        ),
        AccountTypeModel(
          accountType: 'Deposit Cheque',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 2,
        ),
        AccountTypeModel(
          accountType: 'Withdraw Money',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 3,
        ),
      ],
    ),
    AccountModel(
      accountNumber: '2',
      accountName: 'Savings Account',
      accountBalance: '500,000',
      accountType: [
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 4,
        ),
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 5,
        ),
      ],
    ),
    AccountModel(
      accountNumber: '3',
      accountName: 'Other Account',
      accountBalance: '100,000',
      accountType: [
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 6,
        ),
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
          accountTypeId: 7,
        ),
      ],
    ),
  ];
}

class AccountTypeModel {
  int accountTypeId;
  String accountType;
  String icon;

  AccountTypeModel({
    required this.accountTypeId,
    required this.accountType,
    required this.icon,
  });
}
