import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController {
  MainAxisAlignment mainAxis = MainAxisAlignment.end;
  late Color leftlinecolor = const Color.fromARGB(150, 255, 255, 255);
  late Color rightlinecolor = Colors.white;
  String languagebuttontext = "عربي";
  String welcometext = "أهلا بك في المصرف الاهلي العراقي";
  String login = "تسجيل دخول";
  String register = "تسجيل دخول جديد";

  languagebutton() {
    if (mainAxis == MainAxisAlignment.end) {
      //english
      rightlinecolor = const Color.fromARGB(150, 255, 255, 255);
      leftlinecolor = Colors.white;
      languagebuttontext = "English";
      welcometext = "Welcome in National Bank Of Iraq!";
      login = "Login";
      register = "Register";
      mainAxis = MainAxisAlignment.start;
      // print(languagebuttontext);
    } else if (mainAxis == MainAxisAlignment.start) {
      //arabic
      leftlinecolor = const Color.fromARGB(150, 255, 255, 255);
      rightlinecolor = Colors.white;
      languagebuttontext = "عربي";
      welcometext = "أهلا بك في المصرف الاهلي العراقي";
      login = "تسجيل دخول";
      register = "تسجيل دخول جديد";
      mainAxis = MainAxisAlignment.end;
      // print(languagebuttontext);
    }
    update();
  }
}
