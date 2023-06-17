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
      accountBalance: '200',
      accountType: [
        AccountTypeModel(
          accountType: 'Add Money',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
      ],
    ),
    AccountModel(
      accountNumber: '2',
      accountName: 'Savings Account',
      accountBalance: '200',
      accountType: [
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
      ],
    ),
    AccountModel(
      accountNumber: '3',
      accountName: 'Other Account',
      accountBalance: '200',
      accountType: [
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
        AccountTypeModel(
          accountType: 'Pay',
          // image:
          icon:
              'https://cdn.pixabay.com/photo/2014/02/01/18/00/money-256314_1280.jpg',
        ),
      ],
    ),
  ];
}

class AccountTypeModel {
  String accountType;
  String icon;

  AccountTypeModel({
    required this.accountType,
    required this.icon,
  });
}
