class ServiceModel {
  String serviceDescription;
  ServiceModel({
    required this.serviceDescription,
  });

  static List<ServiceModel> serviceLists = [
    ServiceModel(
      serviceDescription:
          "Our automated debit function empowers you to accelerate your progress toward achieving your desired objectives.",
    ),
    ServiceModel(
      serviceDescription:
          "Your funds enjoy 256-bit HTTPS SSL protection while all bank transactins and deposits are insured by NDIC.",
    ),
    ServiceModel(
      serviceDescription:
          "Achieve an impressive annual interest rate up of up to 12 percent on your saving goal.",
    ),
  ];
}
