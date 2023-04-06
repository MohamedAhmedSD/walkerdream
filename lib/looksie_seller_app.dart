import 'package:flutter/material.dart';

import 'src/ui/looksie.seller.home.page.dart';


class LooksieSellerApp extends StatelessWidget {
  const LooksieSellerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LooksieSellerHomePage(),
    );
  }
}
