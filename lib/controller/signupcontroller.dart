import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  gotToCheckEmail();
}

class SignUpControllerIm extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  @override
  void dispose() {
    // TODO: implement dispose
    username.dispose();
    email.dispose();

    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    username = TextEditingController();

    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  gotToCheckEmail() {
    Get.toNamed(RoutesName.checkEmail);
  }
}
