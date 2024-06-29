import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  gotToResetPassword();
}

class VerifyCodeControllerIm extends VerifyCodeController {
  late TextEditingController resetpassword;

  @override
  void onInit() {
    resetpassword = TextEditingController();

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    resetpassword.dispose();

    super.dispose();
  }

  @override
  gotToResetPassword() {
    // TODO: implement gotToSignIn
    Get.toNamed(RoutesName.resetPassword);
  }
}
