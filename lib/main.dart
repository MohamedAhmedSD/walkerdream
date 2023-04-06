import 'package:flutter/material.dart';
import 'package:notebook/banking_app/banking_app.dart';

// import 'health_care_mobile_app.dart';
// import 'src/ui/looksie.seller.home.page.dart';
//JAICHANGPARK

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BankingApp(),
    );
  }
}
