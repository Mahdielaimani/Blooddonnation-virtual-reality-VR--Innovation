import 'package:blooddonation/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckCodeEmail_Controller extends GetxController {
  checkCode();
  gotToSuccessSignUp();
}

class CheckCodeEmail_ControllerIm extends CheckCodeEmail_Controller {
  late TextEditingController code;

  @override
  void onInit() {
    code = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    code.dispose();

    super.dispose();
  }

  @override
  checkCode() {
    throw UnimplementedError();
  }

  @override
  gotToSuccessSignUp() {
    Get.toNamed(RoutesName.successSignUp);
  }
}
