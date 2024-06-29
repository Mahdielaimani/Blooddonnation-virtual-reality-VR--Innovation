import 'package:blooddonation/controller/signupcontroller.dart';
import 'package:blooddonation/core/constant/color.dart';
import 'package:blooddonation/core/constant/routes.dart';
import 'package:blooddonation/view/widget/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/static/static.dart';
import '../../widget/custombottonauth.dart';
import '../../widget/customformauth.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUpControllerIm controller = Get.put(SignUpControllerIm());
  SignUp({super.key});

  final List<String> bloodTypes = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  String selectedBloodType = 'A+';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CustomFormAuth(
            obscuretext: false,
            hinttext: 'Enter your first name',
            labeltext: 'First Name',
            icondata: Icons.person,
          ),
          CustomFormAuth(
            obscuretext: false,
            hinttext: 'Enter your address',
            labeltext: 'Address',
            icondata: Icons.home, mycontroller: null,
          ),
          CustomFormAuth(
            obscuretext: false,
            hinttext: 'Enter your phone number',
            labeltext: 'Phone Number',
            icondata: Icons.phone,
            mycontroller: controller.phone,
          ),
          SizedBox(height: 16.0),
          Text(
            'Blood Type',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: bloodTypes.map((type) {
              return ChoiceChip(
                label: Text(type),
                selected: type == selectedBloodType,
                selectedColor: Colors.red,
                onSelected: (bool selected) {
                  if (selected) {
                    selectedBloodType = type;
                  }
                },
              );
            }).toList(),
          ),
          SizedBox(height: 16.0),
          // CustomFormAuth(
          //   obscuretext: false,
          //   hinttext: 'Enter your email',
          //   labeltext: 'Email',
          //   icondata: Icons.email,
          //   mycontroller: controller.email,
          // ),
          // CustomFormAuth(
          //   obscuretext: true,
          //   hinttext: 'Enter your password',
          //   labeltext: 'Password',
          //   icondata: Icons.lock,
          //   mycontroller: controller.password,
          // ),
          // SizedBox(height: 16.0),
          CustomBottonAuth(
            onTap: () {
              controller.gotToCheckEmail();
            },
            textbutton: 'Sign Up',
          ),
          TextSignUp(
            textone: 'Have an account ',
            texttwo: 'Sign In',
            onTap: () {
              Get.toNamed(RoutesName.login);
            },
          ),
        ],
      ),
    );
  }
}