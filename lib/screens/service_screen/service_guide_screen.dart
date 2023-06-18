import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/models/service_model.dart';
import 'package:flutter_mcb_app/utils/image_constants.dart';
import 'package:flutter_mcb_app/widgets/widget_exports.dart';
import 'package:gap/gap.dart';

class ServiceGuideScreen extends StatelessWidget {
  const ServiceGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Accomodation",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              ImageConstants.savingsImage,
              width: 100,
            ),
            Gap(16),
            Text(
              "Save towards acquiring a better saving plan",
            ),
            Gap(16),
            Expanded(
              child: ListView.builder(
                itemCount: ServiceModel.serviceLists.length,
                itemBuilder: (BuildContext context, int index) {
                  var service = ServiceModel.serviceLists[index];
                  return Container(
                    padding: const EdgeInsets.only(
                      bottom: 16.0,
                    ),
                    child: ServiceGuideWidget(
                      service: service,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.userServiceInformationScreen,
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xFF938EFF),
                ),
                child: Text("Proceed"),
              ),
            ),
            Gap(40),
          ],
        ),
      ),
    );
  }
}
