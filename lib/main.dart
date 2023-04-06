import 'package:flutter/material.dart';

import 'health_care_mobile_app.dart';
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
      home: const HealthcareMobileApp(),
    );
  }
}
