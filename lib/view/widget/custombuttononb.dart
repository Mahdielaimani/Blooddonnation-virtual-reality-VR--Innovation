import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottonOnboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OnbordingControllerIm pageController = Get.find();
    return Container(
      margin: EdgeInsets.all(50),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
        color: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          pageController.next();
        },
        child: const Text("Contiue"),
      ),
    );
  }
}
