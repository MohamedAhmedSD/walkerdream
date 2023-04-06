import 'package:flutter/material.dart';

class HCAMenu {
  String? title;
  Widget? iconWidget;
  int? index;

  HCAMenu({this.title, this.iconWidget, this.index});
}

List<HCAMenu> bottomMenuItems = [
  HCAMenu(title: "Home", index: 1, iconWidget: const Icon(Icons.home_outlined)),
  HCAMenu(title: "Billing", index: 2, iconWidget: const Icon(Icons.card_giftcard)),
  HCAMenu(title: "Paitents", index: 3, iconWidget: const Icon(Icons.person_outlined)),
  HCAMenu(title: "Cretendial", index: 4, iconWidget: const Icon(Icons.list_alt)),
  HCAMenu(title: "Documents", index: 5, iconWidget: const Icon(Icons.document_scanner_outlined)),
];
