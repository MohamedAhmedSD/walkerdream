import 'package:flutter/material.dart';

import 'src/ui/banking_main_page.dart';


class BankingApp extends StatelessWidget {
  const BankingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: BankingMainPage(),
    );
  }
}
