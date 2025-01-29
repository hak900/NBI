// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nbi/model/Pcolors.dart';
import 'package:nbi/model/widgets.dart';
import 'package:nbi/controller/changelanguagecontroller.dart';
import 'package:nbi/view/Homepage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PColors.Bcolor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/back.jpg",
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Lines & // welcome text
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                    child: GetBuilder<RegisterPageController>(
                      init: RegisterPageController(),
                      builder: (controller) => Column(
                        children: [
                          //lines
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Divider(
                                    color: controller.leftlinecolor,
                                    thickness: 2,
                                  )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                      child: Divider(
                                    color: controller.rightlinecolor,
                                    thickness: 2,
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // language button
                              Row(
                                mainAxisAlignment: controller.mainAxis,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: languagebutton(
                                      onPressed: () {
                                        controller.languagebutton();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // welcome text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GetBuilder(
                      init: RegisterPageController(),
                      builder: (controller) => Row(
                        mainAxisAlignment: controller.mainAxis,
                        children: [
                          controller.mainAxis == MainAxisAlignment.end
                              ? Expanded(
                                  child: Text(
                                    controller.welcometext,
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: Text(
                                    controller.welcometext,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GetBuilder(
              init: RegisterPageController(),
              builder: (controller) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                color: Colors.white,
                child: Column(
                  children: [
                    // Login Button
                    CustomButton(
                      lable: controller.login,
                      onPressed: () {
                        Get.off(Homepage());
                      },
                      color: PColors.darkblue,
                      tcolor: Colors.white,
                      bordercolor: PColors.darkblue,
                    ),
                    // <OR> Line
                    Container(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 10, left: 30, right: 30),
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                            color: const Color.fromARGB(80, 0, 0, 0),
                            thickness: 1.5,
                          )),
                          Text(
                            " OR ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: PColors.darkblue,
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            color: const Color.fromARGB(80, 0, 0, 0),
                            thickness: 1.5,
                          )),
                        ],
                      ),
                    ),
                    // Register Button
                    CustomButton(
                      lable: controller.register,
                      onPressed: () {},
                      color: Colors.white,
                      tcolor: PColors.darkblue,
                      bordercolor: const Color.fromARGB(80, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
