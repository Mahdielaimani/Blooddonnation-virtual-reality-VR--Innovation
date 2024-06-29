import 'package:blooddonation/core/constant/imageasset.dart';
import 'package:blooddonation/data/Model/loginmodel.dart';
import 'package:blooddonation/data/Model/onboardingmodel.dart';

List<OnBoardingModel> onBordingLists = [
  OnBoardingModel("", AppImageAsset.onBoardingImageOne,
      "The gift of blood helps save lives \n Every 2 seconds someone needs blood"),
  OnBoardingModel("", AppImageAsset.onBoardingImageTwo,
      "Learn more about blood types and compatibility \n different ways to donate and the need for \n   "),
  OnBoardingModel("", AppImageAsset.onBoardingImageThree,
      "Be a HERO, donate blood and help save lives \n at Gulf Coast Regional Blood Center"),
  OnBoardingModel("", AppImageAsset.onBoardingImageFour,
      "How you can give blood at donation center\n Sign in show an ID and Provide \n some general information")
];
List<AuthModel> loginLists = [
  AuthModel(
    AppImageAsset.loginbackground,
    "Welcome Back",
    "Sign In with your email And passowrd \n Or continue with social media",
  ),
];
List<AuthModel> signUpLists = [
  AuthModel(
      AppImageAsset.loginbackground, "Register", "Create your account \n "),
];
List<AuthModel> forgetPasswordLists = [
  AuthModel(
    AppImageAsset.loginbackground,
    "Send code ",
    "please enter your email address to recive a verify code",
  ),
];
List<AuthModel> verifyCodeLists = [
  AuthModel(
    AppImageAsset.loginbackground,
    "Verify Code",
    "please enter the code Digit in your mail",
  ),
];
List<AuthModel> ResetPasswordLists = [
  AuthModel(
    AppImageAsset.loginbackground,
    "Create New Password",
    "please enter the code Digit in your mail",
  ),
];
