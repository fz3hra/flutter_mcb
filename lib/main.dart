import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:flutter_mcb_app/screens/screen_exports.dart';
import 'package:flutter_mcb_app/screens/tab_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.tabnavigation,
      routes: {
        Routes.tabnavigation: (context) => const TabNavigation(),
        Routes.homescreen: (context) => const HomeScreen(),
        Routes.qrScannerScreen: (context) => const ScanQrScreen(),
        Routes.depositScreen: (context) => const DepositScreen(),
        Routes.confirmationScreen: (context) => const ConfirmationScreen(),
        Routes.addMoneyScreen: (context) => const AddMoneyScreen(),
        Routes.transactionHistoryScreen: (context) =>
            const TransactionHistoryScreen(),
      },
    );
  }
}
