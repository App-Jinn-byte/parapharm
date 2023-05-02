import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/widgets/my_text.dart';
import 'package:parapharm/widgets/my_text_enums.dart';

class CustomAlertMessageWidget extends StatelessWidget {
  const CustomAlertMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.02, 0.02],
              colors: [AppColors.lightBlue, AppColors.lightGreyColor]),
          borderRadius: BorderRadius.all(const Radius.circular(6.0))),
      padding: EdgeInsets.only(right: 8, left: 20, top: 0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText.XXXL(
                'Message...!',
                shadow: false,
                // fontSize: MyTextSize.XXXL,
                color: AppColors.lightBlue,
              ),
              IconButton(
                icon: Icon(Icons.close),
                color: AppColors.darkGreyColor,
                onPressed: () {
                  // handle button press
                },
              ),
            ],
          ),
          MyText.XXL(
            'Lorem ipsum dolor Lorem ipsum dolor.',
            shadow: false,
            color: AppColors.darkGreyColor,
          )
        ],
      ),

      // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}
