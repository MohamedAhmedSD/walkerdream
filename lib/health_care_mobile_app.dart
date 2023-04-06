import 'package:flutter/material.dart';

import 'src/ui/health_care_home_page.dart';

class HealthcareMobileApp extends StatelessWidget {
  const HealthcareMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HealthCareHomePage(),
      },
    );
  }
}
