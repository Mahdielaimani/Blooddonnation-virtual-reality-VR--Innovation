import 'package:blooddonation/core/constant/imageasset.dart';
import 'package:blooddonation/view/screen/auth/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Success SignUp",
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                AppImageAsset.successlogo,
                height: 100,
              )),
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                Get.to(Login());
              },
              child: Text("Go to login"))
        ],
      ),
    );
  }
}
