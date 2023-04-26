import 'package:flutter/material.dart';
import 'package:parapharm/main.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    myFontRatio = MediaQuery.of(context).textScaleFactor>1.0?1.0:MediaQuery.of(context).size.width/800;
    initializeResources(context: context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: sizes!.width*0.05),
          height: sizes?.height,
          width: sizes?.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.onboardingBg),
                      fit: BoxFit.fitWidth
              )
          ),
          child: Column(
            children: [
              SizedBox(height: sizes!.height*0.02,),

              Align(
                  alignment: Alignment.centerRight,
                  child: CommonWidgets.mainTextButton('Skip>', onPress: () {},)),
              Spacer(),
              Image.asset(Assets.appLogo),
              SizedBox(height: sizes!.height*0.03,),
              MyText.XXXXL("Welcome to our store", arialFont:true, shadow: false,),
              SizedBox(height: sizes!.height*0.005,),
              MyText.XXL("Get your groceries in as fast as one hour", arialFont:true, shadow: false, color: AppColors.greyTextColor,),
              SizedBox(height: sizes!.height*0.04,),
              CommonWidgets.mainButton("Login", onPress: (){}, width: sizes!.width*0.85, height: sizes!.height*0.07,),
              SizedBox(height: sizes!.height*0.02,),
              CommonWidgets.mainButtonWithBorder("Create Account", onPress: (){}, width: sizes!.width*0.85, height: sizes!.height*0.07,color: AppColors.transparentColor),
              SizedBox(height: sizes!.height*0.05,),

            ],
          ),

        ),
      ),
    );
  }
}
