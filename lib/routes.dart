import 'package:blooddonation/core/constant/routes.dart';
import 'package:blooddonation/view/screen/auth/checkcode_email.dart';
import 'package:blooddonation/view/screen/auth/checkemail.dart';
import 'package:blooddonation/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:blooddonation/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:blooddonation/view/screen/auth/loginpage.dart';
import 'package:blooddonation/view/screen/auth/signup.dart';
import 'package:blooddonation/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:blooddonation/view/screen/auth/successpage/success_password.dart';
import 'package:blooddonation/view/screen/auth/successpage/success_signup.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  RoutesName.login: (context) => Login(),
  RoutesName.signUp: (context) => SignUp(),
  RoutesName.forgetPassword: (context) => ForgetPassword(),
  RoutesName.verifyCode: (context) => VerifyCode(),
  RoutesName.resetPassword: (context) => ResetPassword(),
  RoutesName.checkEmail: (context) => CheckEmail(),
  RoutesName.checkCodeEmail: (context) => CheckCodeEmail(),
  RoutesName.successSignUp: (context) => SuccessSignUp(),
  RoutesName.successPassword: (context) => SuccessPassword(),
};
