import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/widgets/carousel_slider_widget.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class ProductDetailScreenView extends StatelessWidget {
  ProductDetailScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CommonWidgets.customAppBar(
          title: "Product Detail",
          onTapLeadingIcon: () {
            Navigator.pop(context);
          }),
      body: SizedBox(
        width: sizes!.width,
        height: sizes!.height,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                CommonWidgets.customSearchTextField(),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                CarouselSliderWidget(sliderImages: bannerImages),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                _textNameRow(
                    text: "Product Name", textValue: "Gamme Sebiaclear"),
                CommonWidgets.divider(),
                _textNameRow(text: "Price", textValue: "25,000 TND"),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                MyText.XXXL(
                  "Product Detail",
                  bold: true,
                ),
                SizedBox(
                  height: sizes!.height * 0.01,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: MyText.XXL(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do etempor.consectetur adipiscielit.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed  do etempor.consectetur adipiscing elit.",
                    color: AppColors.darkGreyColor,
                    textAlign: TextAlign.start,
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                CommonWidgets.addToCartLargeButton(),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                CommonWidgets.headingWithViewAllButtonRow(
                    text: "Related Products", onTap: () {}),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonWidgets.productCardWithCartButton(
                        productName: "Face Mask Product",
                        productPrice: "25,000 TND",
                        icon: Assets.productDummyImage01),
                    CommonWidgets.productCardWithCartButton(
                        productName: "Face Care Product",
                        productPrice: "25,000 TND",
                        icon: Assets.productDummyImage02)
                  ],
                ),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget _textNameRow({required String text, required String textValue}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      MyText.XXXL(
        "$text:",
        bold: true,
      ),
      MyText.XXXL(
        textValue,
        color: AppColors.appTheme,
      )
    ]);
  }

  List<String> bannerImages = [
    Assets.offerBannerDummyImage03,
    Assets.offerBannerDummyImage,
    Assets.offerBannerDummyImage02,
  ];
}
