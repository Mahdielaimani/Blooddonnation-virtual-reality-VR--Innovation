import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassword_Controller extends GetxController {
  checkCodePassword();
  gotToSuccessPassword();
}

class ResetPassword_ControllerIm extends ResetPassword_Controller {
  late TextEditingController newpassword;
  late TextEditingController renewpassword;

  @override
  void onInit() {
    newpassword = TextEditingController();
    renewpassword = TextEditingController();

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    newpassword.dispose();
    renewpassword.dispose();

    super.dispose();
  }

  @override
  checkCodePassword() {
    // TODO: implement checkCodePassword
    throw UnimplementedError();
  }

  @override
  gotToSuccessPassword() {
    // TODO: implement gotToSuccessPassword

    Get.toNamed(RoutesName.successPassword);
  }
}
