import 'package:blooddonation/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import '../../data/static/static.dart';

class CustomSliderOnboarding extends GetView<OnbordingControllerIm> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanges(val);
        },
        itemCount: onBordingLists.length,
        itemBuilder: ((context, i) => Column(
              children: [
                const SizedBox(height: 30),
                Text(onBordingLists[i].titel!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      height: 2,
                      fontSize: 35,
                    )),
                const SizedBox(height: 20),
                Container(
                  child: Image.asset(
                    onBordingLists[i].image!,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 60),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBordingLists[i].text!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ],
            )),
      ),
    );
  }
}
