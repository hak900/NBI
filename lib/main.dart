import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nbi/view/splash.dart';

void main() {
  runApp(const NBI());
}

class NBI extends StatelessWidget {
  const NBI({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}
