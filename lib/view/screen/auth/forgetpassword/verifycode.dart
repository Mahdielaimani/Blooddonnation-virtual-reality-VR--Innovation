import 'package:blooddonation/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../../controller/verifycodecontroller.dart';
import '../../../../core/constant/color.dart';
import '../../../widget/custombottonauth.dart';

// ignore: must_be_immutable
class VerifyCode extends StatelessWidget {
  VerifyCodeControllerIm controller = Get.put(VerifyCodeControllerIm());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Verify Code",
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
                    child: Text(verifyCodeLists[index].text!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ))),
                Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(verifyCodeLists[index].body!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          color: AppColor.textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ))),
                OTPTextField(
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  fieldStyle: FieldStyle.box,
                  style: TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
                CustomBottonAuth(
                  onTap: () {
                    controller.gotToResetPassword();
                  },
                  textbutton: 'Verify',
                ),
              ],
            )),
      ),
    );
  }
}
