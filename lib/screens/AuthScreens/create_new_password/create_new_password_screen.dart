import 'package:flutter/material.dart';
import 'package:parapharm/animations/slide_right.dart';
import 'package:parapharm/main.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/AuthScreens/password_changed/password_changed_screen.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
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
            children: [
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              CommonWidgets.pppColorLogo(),
              SizedBox(
                height: sizes!.height * 0.03,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL(
                    "Create New Password",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.blackTextColor,
                    bold: true,
                  )),
              SizedBox(
                height: sizes!.height * 0.017,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "Create Password",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.passwordTextField(
                  hintText: 'Enter Password',
                  controller: passwordController,
                  keyboardType: TextInputType.name,
                  onClick: () {}),
              SizedBox(
                height: sizes!.height * 0.017,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.M(
                    "Confirm Password",
                    arialFont: true,
                    shadow: false,
                    color: AppColors.darkGreyTextColor,
                  )),
              SizedBox(
                height: sizes!.height * 0.012,
              ),
              CommonWidgets.passwordTextField(
                  hintText: 'Confirm Password',
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.name,
                  onClick: () {}),
              SizedBox(
                height: sizes!.height * 0.04,
              ),
              CommonWidgets.mainButton(
                "Reset Password",
                onPress: () {
                  Navigator.push(
                      context, SlideRightRoute(page: PasswordChangedScreen()));
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
