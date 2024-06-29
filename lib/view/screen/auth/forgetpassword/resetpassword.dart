import 'package:blooddonation/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/resetpassword_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/custombottonauth.dart';
import '../../../widget/customformauth.dart';

// ignore: must_be_immutable
class ResetPassword extends StatelessWidget {
  ResetPassword_ControllerIm controller = Get.put(ResetPassword_ControllerIm());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Reset PassWord",
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: verifyCodeLists.length,
        itemBuilder: ((context, index) => Column(
              children: [
                Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(ResetPasswordLists[index].text!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ))),
                Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(ResetPasswordLists[index].body!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          color: AppColor.textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ))),
                CustomFormAuth(
                  hinttext: 'New password',
                  icondata: Icons.lock,
                  labeltext: 'password',
                  mycontroller: controller.newpassword,
                  obscuretext: true,
                ),
                CustomFormAuth(
                  hinttext: 'Confirm your password',
                  icondata: Icons.lock,
                  labeltext: 'password',
                  mycontroller: controller.renewpassword,
                  obscuretext: true,
                ),
                CustomBottonAuth(
                  onTap: () {
                    controller.gotToSuccessPassword();
                  },
                  textbutton: 'Save',
                ),
              ],
            )),
      ),
    );
  }
}
