// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nbi/controller/changelanguagecontroller.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.lable, required this.hint});
  final lable;
  final hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          label: Text(lable),
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.lable,
    required this.color,
    required this.tcolor,
    required this.bordercolor,
  });
  final Function()? onPressed;
  final lable;
  final color;
  final tcolor;
  final bordercolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(0),
        minimumSize: const WidgetStatePropertyAll(Size(double.maxFinite, 50)),
        backgroundColor: WidgetStatePropertyAll(color),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: bordercolor,
            ),
          ),
        ),
      ),
      child: Text(
        lable,
        style: TextStyle(color: tcolor, fontSize: 20),
      ),
    );
  }
}

class languagebutton extends StatelessWidget {
  const languagebutton({
    super.key,
    required this.onPressed,
  });

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size(20, 35)),
          backgroundColor:
              const WidgetStatePropertyAll(Color.fromRGBO(1, 1, 1, 0)),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
                side: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(13)),
          )),
      child: GetBuilder<RegisterPageController>(
        init: RegisterPageController(),
        builder: (controller) => Text(
          controller.languagebuttontext,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class redoptions extends StatelessWidget {
  const redoptions({
    super.key,
    this.icon,
    this.text,
  });
  final icon;
  final text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: const Color.fromARGB(255, 255, 0, 76),
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$text",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset("images/card.jpg"),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "SAVING ACCOUNT",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 216, 216, 216)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "897430",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TOTAL ACCOUNT BALANCE",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 216, 216, 216)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1,500,000.00 IQD",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
