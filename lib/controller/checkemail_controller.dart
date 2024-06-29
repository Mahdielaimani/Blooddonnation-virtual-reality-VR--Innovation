import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmail_Controller extends GetxController {
  checkEmail();
  gotToCheckCodeEmail();
}

class CheckEmail_ControllerIm extends CheckEmail_Controller {
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
  checkEmail() {
    // TODO: implement checkEmail
    throw UnimplementedError();
  }

  @override
  gotToCheckCodeEmail() {
    // TODO: implement gotToCheckCodeEmail
    Get.toNamed(RoutesName.checkCodeEmail);
  }
}
