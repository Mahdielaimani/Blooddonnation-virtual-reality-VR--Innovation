import 'package:blooddonation/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetpasscontroller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/custombottonauth.dart';
import '../../../widget/customformauth.dart';

// ignore: must_be_immutable
class ForgetPassword extends StatelessWidget {
  ForgetPassword_ControllerIm controller =
      Get.put(ForgetPassword_ControllerIm());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Forget Password",
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: forgetPasswordLists.length,
        itemBuilder: ((context, index) => Column(children: [
              Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(forgetPasswordLists[index].text!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
              Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(forgetPasswordLists[index].body!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2,
                        color: AppColor.textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ))),
              CustomFormAuth(
                  obscuretext: false,
                  hinttext: 'enter your email or phone',
                  labeltext: 'email',
                  icondata: Icons.email,
                  mycontroller: TextEditingController()),
              SizedBox(
                height: 2,
              ),
              CustomBottonAuth(
                onTap: () {
                  controller.gotToVerifyCode();
                },
                textbutton: 'Send email',
              ),
            ])),
      ),
    );
  }
}
