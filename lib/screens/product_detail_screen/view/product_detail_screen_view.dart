import 'package:flutter/material.dart';
import 'package:parapharm/animations/slide_right.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/cart/cart_screen_first/cart_screen_first.dart';
import 'package:parapharm/screens/home_screen_pages/home_screen/view/home_screen_view.dart';
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
                CommonWidgets.divider(),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                MyText.XL(
                  "Product Detail",
                  bold: true,
                ),
                SizedBox(
                  height: sizes!.height * 0.01,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: MyText.L(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do etempor.consectetur adipiscielit.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed  do etempor.consectetur adipiscing elit.",
                    color: AppColors.darkGreyColor,
                    textAlign: TextAlign.start,
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  height: sizes!.height * 0.035,
                ),
                CommonWidgets.addToCartLargeButton(onPressAddToCart: () {
                  showConfirmProductDialog(context,
                      productName: 'Caviar Clere Clarify Shampoo 500ml');
                }),
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
      MyText.L(
        "$text:",
        bold: true,
      ),
      MyText.L(
        textValue,
        color: AppColors.appTheme,
      )
    ]);
  }

  void showConfirmProductDialog(BuildContext context, {String? productName}) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.7),
        //SHADOW EFFECT
        transitionBuilder: (context, animation, animationTime, widget) {
          animation =
              CurvedAnimation(parent: animation, curve: Curves.decelerate);
          return ScaleTransition(
            alignment: Alignment.center,
            scale: animation,
            child: widget,
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
        // DURATION FOR ANIMATION
        barrierDismissible: true,
        barrierLabel: 'LABEL',
        context: context,
        pageBuilder: (context, animation, animationTime) {
          return CommonWidgets.showCustomDialog(context,
              widgetBody: Container(
                width: sizes!.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: AppColors.dialogWhiteColor,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: MyText.XXL(
                          "Confirmation",
                          arialFont: true,
                          shadow: false,
                          color: AppColors.blackTextColor,
                          bold: true,
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                      height: sizes!.height * 0.023,
                    ),
                    DifferentColorText(
                      textAlign: TextAlign.center,
                      firstText: "The ",
                      secondText: productName ?? '',
                      thirdText:
                          ' item has been successfully added to the shopping cart.',
                    ),
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CommonWidgets.mainButton("Continue Shopping",
                          onPress: () {
                        Navigator.push(
                            context, SlideRightRoute(page: HomeScreenView()));
                      }),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CommonWidgets.mainButtonWithBorder("See Cart",
                          textColor: AppColors.appTheme,
                          color: AppColors.transparentColor, onPress: () {
                        Navigator.push(context,
                            SlideRightRoute(page: const CartScreenFirst()));
                      }),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.02,
                    ),
                  ],
                ),
              ));
        });
  }

  List<String> bannerImages = [
    Assets.offerBannerDummyImage03,
    Assets.offerBannerDummyImage,
    Assets.offerBannerDummyImage02,
  ];
}
