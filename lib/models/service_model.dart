class ServiceModel {
  String serviceDescription;
  ServiceModel({
    required this.serviceDescription,
  });

  static List<ServiceModel> serviceLists = [
    ServiceModel(
      serviceDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ServiceModel(
      serviceDescription:
          "1111Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
    ServiceModel(
      serviceDescription:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ),
  ];
}
