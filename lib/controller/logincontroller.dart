import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  gotToSigup();
  goToForgetPassword();
}

class LoginControllerIm extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    // TODO: implement onInit
    super.onInit();
  }

  @override
  login() {}

  gotToSigup() {
    Get.toNamed(RoutesName.signUp);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(RoutesName.forgetPassword);
  }
}
