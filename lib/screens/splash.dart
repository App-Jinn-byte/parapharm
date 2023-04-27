import 'package:flutter/cupertino.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeResources(context: context);
    return Container(
      height: sizes?.height,
      width: sizes?.width,
      color: AppColors.appTheme,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.appLogo),
          SizedBox(
            height: sizes!.height * 0.1,
          ),
          Image.asset(Assets.logoText),
        ],
      ),
    );
  }
}
