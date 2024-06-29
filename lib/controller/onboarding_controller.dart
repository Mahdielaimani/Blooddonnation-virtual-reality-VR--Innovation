import 'package:blooddonation/data/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/routes.dart';

abstract class OnbordingController extends GetxController {
  next();
  onPageChanges(int i);
}

class OnbordingControllerIm extends OnbordingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    if (currentPage < onBordingLists.length) {
      pageController.animateToPage(currentPage,
          duration: Duration(microseconds: 900), curve: Curves.easeInOut);
    } else {
      Get.offAllNamed(RoutesName.login);
    }
  }

  @override
  onPageChanges(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
