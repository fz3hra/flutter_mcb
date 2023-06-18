import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/screens/screen_exports.dart';
import 'package:flutter_mcb_app/screens/tab_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(const MyApp());
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.loginScreen,
      routes: {
        Routes.tabnavigation: (context) => const TabNavigation(),
        Routes.homescreen: (context) => const HomeScreen(),
        Routes.qrScannerScreen: (context) => const ScanQrScreen(),
        Routes.depositScreen: (context) => const DepositScreen(),
        Routes.confirmationScreen: (context) => const ConfirmationScreen(),
        Routes.addMoneyScreen: (context) => const AddMoneyScreen(),
        Routes.transactionHistoryScreen: (context) =>
            const TransactionHistoryScreen(),
        Routes.notificationScreen: (context) => const NotificationScreen(),
        Routes.loginScreen: (context) => const LoginScreen(),
        Routes.registrationScreen: (context) => const RegistrationScreen(),
        Routes.kyc1Screen: (context) => const Kyc1Screen(),
        Routes.userInformationScreen: (context) =>
            const UserInformationScreen(),
        Routes.serviceguideScreen: (context) => const ServiceGuideScreen(),
        Routes.userServiceInformationScreen: (context) =>
            const UserServiceInformation(),
        Routes.planScreen: (context) => const PlanScreen(),
        Routes.userInformationPlanScreen: (context) =>
            const UserPlanInformationScreen(),
        Routes.planDetailedInformationScreen: (context) =>
            const PlanDetailedInformationScreen(),
      },
    );
  }
}
