import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parapharm/animations/slide_right.dart';
import 'package:parapharm/main.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/AuthScreens/login_screen/login.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrNumberController = TextEditingController();
    myFontRatio = MediaQuery.of(context).textScaleFactor > 1.0
        ? 1.0
        : MediaQuery.of(context).size.width / 800;
    initializeResources(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width * 0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: BoxDecoration(
            color: AppColors.appBackground,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.checkMark,
                height: sizes!.height * 0.2,
                width: sizes!.height * 0.2,
              ),
              SizedBox(
                height: sizes!.height * 0.02,
              ),
              MyText.XXL(
                "Password Changed!",
                arialFont: true,
                shadow: false,
                color: AppColors.blackTextColor,
                bold: true,
              ),
              SizedBox(
                height: sizes!.height * 0.02,
              ),
              MyText.M(
                "Your Password Has Been Change Successfully",
                arialFont: true,
                shadow: false,
                color: AppColors.darkBlueText,
                maxLines: 2,
              ),
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              CommonWidgets.mainButton(
                "Log-in",
                onPress: () {
                  Navigator.pushReplacement(
                      context, SlideRightRoute(page: LoginScreen()));
                },
                width: sizes!.width,
                height: sizes!.height * 0.07,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
