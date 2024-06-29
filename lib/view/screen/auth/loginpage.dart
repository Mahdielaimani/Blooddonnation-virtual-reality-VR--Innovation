import 'package:blooddonation/view/home/home.dart';
import 'package:blooddonation/view/widget/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/data/static/static.dart';
import 'package:get/get.dart';
import '../../../controller/logincontroller.dart';
import '../../../core/constant/color.dart';
import '../../widget/custombottonauth.dart';
import '../../widget/customformauth.dart';

class Login extends StatelessWidget {
  LoginControllerIm controller = Get.put(LoginControllerIm());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: loginLists.length,
        itemBuilder: ((context, index) => Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                    child: Image.asset(
                      loginLists[index].image!,
                      height: 200,
                    )),
                Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(loginLists[index].text!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ))),
                Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(loginLists[index].body!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 2,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ))),
                CustomFormAuth(
                  obscuretext: false,
                  hinttext: 'enter your email',
                  labeltext: 'email',
                  icondata: Icons.email,
                  mycontroller: controller.email,
                ),
                SizedBox(
                  height: 2,
                ),
                CustomFormAuth(
                  obscuretext: true,
                  hinttext: 'enter your password',
                  labeltext: 'Password',
                  icondata: Icons.lock,
                  mycontroller: controller.password,
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "Forget password",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomBottonAuth(
                  onTap: () {
                    Get.to(() => HomePage()); // Navigate to HomePage
                  },
                  textbutton: 'Sign In',
                ),
                SizedBox(height: 30),
                TextSignUp(
                  textone: 'Dont have account ? ',
                  texttwo: 'Sign Up',
                  onTap: () {
                    controller.gotToSigup();
                  },
                  textoneColor: Colors.white,
                  texttwoColor: Colors.white,
                ),
              ],
            )),
      ),
    );
  }
}
