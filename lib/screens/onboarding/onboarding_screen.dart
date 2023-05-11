import 'package:flutter/material.dart';
import 'package:parapharm/animations/slide_right.dart';
import 'package:parapharm/main.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/AuthScreens/create_account/create_account_screen.dart';
import 'package:parapharm/screens/AuthScreens/login_screen/login.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myFontRatio = MediaQuery.of(context).textScaleFactor > 1.0
        ? 1.0
        : MediaQuery.of(context).size.width / 800;
    initializeResources(context: context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: sizes!.width * 0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.onboardingBg),
                  fit: BoxFit.fitWidth)),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.89),
                  Color.fromRGBO(0, 0, 0, 0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: sizes!.height * 0.02,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: CommonWidgets.mainTextButton('Skip>',
                        onPress: () {}, underline: true)),
                Spacer(),
                Image.asset(Assets.appLogo),
                SizedBox(
                  height: sizes!.height * 0.03,
                ),
                MyText.XXL(
                  "Welcome to our store",
                  arialFont: true,
                  shadow: false,
                  color: AppColors.whiteColor,
                ),
                SizedBox(
                  height: sizes!.height * 0.005,
                ),
                MyText.M(
                  "Get your groceries in as fast as one hour",
                  arialFont: true,
                  shadow: false,
                  color: AppColors.greyTextColor,
                ),
                SizedBox(
                  height: sizes!.height * 0.04,
                ),
                CommonWidgets.mainButton(
                  "Login",
                  showShadow: false,
                  onPress: () {
                    Navigator.pushReplacement(
                        context, SlideRightRoute(page: const LoginScreen()));
                  },
                  width: sizes!.width * 0.85,
                  height: sizes!.heightRatio * 40,
                ),
                SizedBox(
                  height: sizes!.height * 0.02,
                ),
                CommonWidgets.mainButtonWithBorder("Create Account",
                    onPress: () {
                  Navigator.pushReplacement(context,
                      SlideRightRoute(page: const CreateAccountScreen()));
                },
                    width: sizes!.width * 0.85,
                    height: sizes!.heightRatio * 40,
                    color: AppColors.transparentColor),
                SizedBox(
                  height: sizes!.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
