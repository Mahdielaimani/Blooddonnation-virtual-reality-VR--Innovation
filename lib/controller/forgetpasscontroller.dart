import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassword_Controller extends GetxController {
  checkEmail();
  gotToVerifyCode();
}

class ForgetPassword_ControllerIm extends ForgetPassword_Controller {
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();

    super.dispose();
  }

  @override
  gotToVerifyCode() {
    Get.toNamed(RoutesName.verifyCode);
  }

  @override
  checkEmail() {
    // TODO: implement checkEmail
    throw UnimplementedError();
  }
}
