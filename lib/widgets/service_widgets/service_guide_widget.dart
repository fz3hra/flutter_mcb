import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/models/service_model.dart';
import 'package:gap/gap.dart';

class ServiceGuideWidget extends StatelessWidget {
  ServiceModel service;
  ServiceGuideWidget({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check),
        Gap(16),
        Expanded(
          child: Text(
            service.serviceDescription,
          ),
        ),
      ],
    );
  }
}
