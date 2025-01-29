import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLanguageController extends GetxController {
  late Color transactiontext = const Color.fromARGB(255, 40, 77, 108);
  late Color accountinfotext = Colors.white;
  changecolor() {
    if (transactiontext == const Color.fromARGB(255, 40, 77, 108)) {
      transactiontext = Colors.white;
      accountinfotext = const Color.fromARGB(255, 40, 77, 108);
    } else if (transactiontext == Colors.white) {
      transactiontext = const Color.fromARGB(255, 40, 77, 108);
      accountinfotext = Colors.white;
    }
    update();
  }
}
