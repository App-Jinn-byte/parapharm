import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/screens/banner_offer_page/view/banner_offer_screen_view.dart';
import 'package:parapharm/screens/brand_products_screen/view/brand_products_screen_view.dart';
import 'package:parapharm/screens/categories_screen/view/categories_screen_view.dart';
import 'package:parapharm/screens/custom_drawer/custom_drawer.dart';
import 'package:parapharm/screens/home_screen_pages/home_screen/view/widget/widget.dart';
import 'package:parapharm/widgets/carousel_slider_widget.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        appBar: CommonWidgets.customAppBar(
            title: "Home",
            leadingIcon: Assets.hamburgerIcon,
            onTapLeadingIcon: () {
              _scaffoldKey.currentState?.openDrawer();
            }),
        body: SizedBox(
            width: sizes!.width,
            height: sizes!.height,
            child: SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 20),
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
                    const CustomAlertMessageWidget(),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BannerOfferScreenView()));
                      },
                      child: const CarouselSliderWidget(
                        sliderImages: [
                          Assets.offerBannerDummyImage,
                          Assets.offerBannerDummyImage02,
                          Assets.offerBannerDummyImage
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    categorySelectionList(),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    CommonWidgets.headingWithViewAllButtonRow(
                        text: "Feature Category",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CategoriesScreenView()));
                        }),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    featureCategoryList(),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    FractionallySizedBox(
                      widthFactor: 1.08,
                      child: Image.asset(
                        Assets.offerBannerDummyImage02,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    CommonWidgets.headingWithViewAllButtonRow(
                        text: "Sun Care Products", onTap: () {}),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonWidgets.productCardWithCartButton(
                            productName: "Face Mask Product",
                            productPrice: "25,000 TND",
                            icon: Assets.productDummyImage02),
                        CommonWidgets.productCardWithCartButton(
                            productName: "Face Mask Product",
                            productPrice: "25,000 TND",
                            icon: Assets.productDummyImage02),
                      ],
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    FractionallySizedBox(
                      widthFactor: 1.08,
                      child: Image.asset(
                        Assets.offerBannerDummyImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    CommonWidgets.headingWithViewAllButtonRow(
                        text: "Health Care Products", onTap: () {}),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonWidgets.productCardWithCartButton(
                            productName: "Face Mask Product",
                            productPrice: "25,000 TND",
                            icon: Assets.productDummyImage02),
                        CommonWidgets.productCardWithCartButton(
                            productName: "Face Mask Product",
                            productPrice: "25,000 TND",
                            icon: Assets.productDummyImage02),
                      ],
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    FractionallySizedBox(
                      widthFactor: 1.08,
                      child: Image.asset(
                        Assets.offerBannerDummyImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    MyText.XL(
                      "Brand Logo",
                      shadow: false,
                      color: AppColors.blackColor,
                      bold: true,
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    brandLogosList()
                  ],
                ),
              ),
            )),
      ),
    );
  }

  Widget featureCategoryContainer({required image, required text}) {
    return SizedBox(
      width: sizes!.widthRatio * 70,
      child: Column(
        children: [
          SizedBox(
              height: sizes!.heightRatio * 70,
              width: sizes!.widthRatio * 70,
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(4),
              //     border: Border.all(color: AppColors.lightGreyColor, width: 2)),
              child: Image.asset(image)),
          SizedBox(
            height: sizes!.heightRatio * 5,
          ),
          MyText.S(
            text,
            maxLines: 1,
            shadow: false,
          )
        ],
      ),
    );
  }

  var featureCategoryListText = [
    "Aromathrapy",
    "Beauty Care ",
    "Baby Care",
    "Hair Care",
    "Face Mask",
    "Face Care"
  ];

  var featureCategoryIconsList = [
    Assets.featureCategoryImg01,
    Assets.featureCategoryImg02,
    Assets.featureCategoryImg03,
    Assets.featureCategoryImg04,
    Assets.featureCategoryImg01,
    Assets.featureCategoryImg02,
  ];

  var brandLogoIconsList = [
    Assets.brandLogoDummyIcon01,
    Assets.brandLogoDummyIcon02,
    Assets.brandLogoDummyIcon03,
    Assets.brandLogoDummyIcon04,
  ];

  Widget brandLogosList() {
    return SizedBox(
      height: sizes!.heightRatio * 100.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: brandLogoIconsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BrandProductsScreenView()));
              },
              child: brandIconContainer(
                  image: brandLogoIconsList[index],
                  text: featureCategoryListText[index]),
            );
          }),
    );
  }

  Widget brandIconContainer({required image, required text}) {
    return Column(
      children: [
        Container(
            height: sizes!.heightRatio * 70,
            width: sizes!.widthRatio * 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 10),
            padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 10),
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(4),
            //     border: Border.all(color: AppColors.lightGreyColor, width: 2)),
            child: Image.asset(image)),
      ],
    );
  }

  Widget featureCategoryList() {
    return SizedBox(
      height: sizes!.heightRatio * 100.0,
      width: double.infinity,
      child: ListView.builder(
          itemCount: featureCategoryListText.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: sizes!.widthRatio * 2),
              child: featureCategoryContainer(
                  image: featureCategoryIconsList[index],
                  text: featureCategoryListText[index]),
            );
          }),
    );
  }

  Widget categorySelectionBoxes({
    required String text,
  }) {
    return ElevatedButton(
      onPressed: () {
        // Add your button logic here
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appTheme,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: MyText.S(
        text,
        color: AppColors.whiteColor,
        shadow: false, // add the text for the button
      ),
    );
  }

  Widget categorySelectionList() {
    return Padding(
      padding: EdgeInsets.only(
          left: sizes!.widthRatio * 0, right: sizes!.widthRatio * 0),
      child: SizedBox(
        height: sizes!.heightRatio * 43.0,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: sizes!.widthRatio * 9.0),
              child: GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      // Navigator.push(
                      //     context, SlideRightRoute(page: const LatestScreen()));

                      break;
                    case 1:
                      // Navigator.push(
                      //     context, SlideRightRoute(page: const EventsScreen()));

                      break;
                    case 2:
                      // Navigator.push(
                      //     context, SlideRightRoute(page: const OffersScreen()));
                      break;
                  }
                },
                child: categorySelectionBoxes(
                  text: categoryListText[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  final categoryListText = ["Good Plans", "Gift Boxes ", "Baby Boxes"];
}
