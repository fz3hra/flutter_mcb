class NotificationModel {
  String fullName, chequeAmount;
  NotificationModel({
    required this.fullName,
    required this.chequeAmount,
  });

  static List<NotificationModel> notificationsLists = [
    NotificationModel(
      fullName: 'John Doe',
      chequeAmount: '200 000',
    ),
    NotificationModel(
      fullName: 'Zaah Mujore',
      chequeAmount: '10 000',
    ),
  ];
}
