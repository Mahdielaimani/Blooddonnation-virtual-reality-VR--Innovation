import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:blooddonation/data/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../core/constant/color.dart';

class DotControllerOnboarding extends StatelessWidget {
  const DotControllerOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnbordingControllerIm>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBordingLists.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.all(3),
                          duration: const Duration(microseconds: 900),
                          width: controller.currentPage == index ? 20 : 7,
                          height: 7,
                          decoration: BoxDecoration(
                              color: AppColor.buttonColor,
                              borderRadius: BorderRadius.circular(50)),
                        )),
              ],
            ));
  }
}
