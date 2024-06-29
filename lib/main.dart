import 'package:blooddonation/routes.dart';
import 'package:blooddonation/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "PTSans",
          textTheme: TextTheme(
            headline1: TextStyle(
                height: 2,
                fontWeight: FontWeight.bold,
                color: AppColor.textColor),
            bodyText1: TextStyle(
                height: 2,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.redAccent),
          )),
      home: OnBoarding(),
      routes: routes,
    ),
  );
}
