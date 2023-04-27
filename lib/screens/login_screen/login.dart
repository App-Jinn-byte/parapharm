import 'package:flutter/material.dart';
import 'package:parapharm/main.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailOrNumberController = TextEditingController();
    myFontRatio = MediaQuery.of(context).textScaleFactor>1.0?1.0:MediaQuery.of(context).size.width/800;
    initializeResources(context: context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width*0.08),
          height: sizes?.height,
          width: sizes?.width,
          decoration: BoxDecoration(
            color: AppColors.appBackground,
          ),
          child: Column(
            children: [
              Image.asset(Assets.appColorLogo),
              SizedBox(height: sizes!.height*0.03,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXXXL("Login", arialFont:true, shadow: false,color: AppColors.blackTextColor,)),
              SizedBox(height: sizes!.height*0.005,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL("Email address/Phone number", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
              CommonWidgets.customTextField( hintText: 'Enter Email/Number', controller: emailOrNumberController, keyboardType: TextInputType.name),
              Align(
                  alignment: Alignment.centerLeft,
                  child: MyText.XXL("Password", arialFont:true, shadow: false, color: AppColors.darkGreyTextColor,)),
              CommonWidgets.passwordTextField(hintText: 'Enter Password', controller: emailOrNumberController, keyboardType: TextInputType.name, onClick: (){} ),
              SizedBox(height: sizes!.height*0.04,),
              CommonWidgets.mainButton("Login", onPress: (){}, width: sizes!.width, height: sizes!.height*0.07,),
              Align(
                  alignment: Alignment.centerRight,
                  child: CommonWidgets.mainTextButton("Forgot Password?", onPress: (){})),
              Row(children: [
                Expanded(child: Divider(color: AppColors.dividerColor,)),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MyText.XXXL('Or',arialFont: true, color: AppColors.appTheme,shadow: false,),
                ),
                Expanded(child: Divider(color: AppColors.dividerColor,)),

              ],),
              CommonWidgets.mainButtonWithBorderAndIcon('Continue with Google', Assets.googleIcon, onPress:(){}, color: AppColors.transparentColor, textColor: AppColors.blackTextColor,buttonBorderColor:  AppColors.textFieldBorderColor),
              SizedBox(height: sizes!.height*0.02,),
              CommonWidgets.mainButtonWithBorderAndIcon('Continue with Facebook',Assets.fbIcon, onPress:(){},color: AppColors.transparentColor, textColor: AppColors.blackTextColor, buttonBorderColor:  AppColors.textFieldBorderColor),
              SizedBox(height: sizes!.height*0.05,),
            ],
          ),
        ),
      ),
    );
  }
}
