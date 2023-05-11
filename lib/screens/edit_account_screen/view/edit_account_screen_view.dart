import 'package:flutter/material.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';
import 'package:parapharm/widgets/common_widgets.dart';
import 'package:parapharm/widgets/my_text.dart';

class EditAccountScreenView extends StatelessWidget {
  const EditAccountScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonWidgets.customAppBar(
            title: "Edit Account",
            onTapLeadingIcon: () {
              Navigator.pop(context);
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
                    Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Container(
                            width: getHeightRatio() * 120,
                            height: getHeightRatio() * 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.greyBorderColor, width: 1.5),
                              shape: BoxShape.circle,
                              // image:  DecorationImage(
                              //     fit: BoxFit.fill,
                              //     image:  AssetImage(Assets.profileImage)
                              // )
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  getHeightRatio() * 65.0),
                              child:
                                  // editProfileProvide.profileImage != null
                                  //     ? Image.file(editProfileProvide.profileImage!,
                                  //     fit: BoxFit.fill,
                                  //     width: getHeightRatio() * 50,
                                  //     height: getHeightRatio() * 50)
                                  //     : PreferenceUtils.getProfileImage()
                                  //     .contains("http")
                                  //     ? Image.network(
                                  //   PreferenceUtils.getProfileImage(),
                                  //   fit: BoxFit.fill,
                                  //   width: getHeightRatio() * 50,
                                  //   height: getHeightRatio() * 50,
                                  //   errorBuilder: (context, exception,
                                  //       stackTrack) =>
                                  //       Image.asset(Assets.profileAvatar,
                                  //           fit: BoxFit.fill,
                                  //           width: getHeightRatio() * 50,
                                  //           height: getHeightRatio() * 50),
                                  //   loadingBuilder: (BuildContext context,
                                  //       Widget child,
                                  //       ImageChunkEvent? loadingProgress) {
                                  //     if (loadingProgress == null) {
                                  //       return child;
                                  //     }
                                  //     return Center(
                                  //       child: CircularProgressIndicator(
                                  //         value: loadingProgress
                                  //             .expectedTotalBytes !=
                                  //             null
                                  //             ? loadingProgress
                                  //             .cumulativeBytesLoaded /
                                  //             loadingProgress
                                  //                 .expectedTotalBytes!
                                  //             : null,
                                  //       ),
                                  //     );
                                  //   },
                                  // )
                                  //     :
                                  Image.asset(Assets.profileDummyIcon02,
                                      fit: BoxFit.fill,
                                      width: getHeightRatio() * 50,
                                      height: getHeightRatio() * 50),
                            ),
                          ),
                          Positioned(
                            width: getHeightRatio() * 30,
                            height: getHeightRatio() * 30,
                            bottom: getHeightRatio() * 7,
                            right: getHeightRatio() + 2,
                            child: GestureDetector(
                              onTap: () {
                                // print("Opening bottom Sheet");
                                // var sheetController = _scaffoldKey.currentState
                                //     ?.showBottomSheet(
                                //         (context) => BottomSheetWidget(
                                //       onCamera: () {
                                //         editProfileProvide.openCamera(
                                //             context: context, imageCheck: 0);
                                //         // Navigator.of(context).pop();
                                //       },
                                //       onGallery: () {
                                //         editProfileProvide.openGallery(
                                //             context: context, imageCheck: 0);
                                //       },));
                                // // On Closure of bottom sheet:
                                // sheetController?.closed.then((value) {
                                //
                                //   setState(() {
                                //
                                //   });
                                //
                                //   print("Bottom Sheet Closed");
                                // });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  border: Border.all(
                                      color: AppColors.greyBorderColor,
                                      width: 1.5),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Image.asset(
                                  Assets.cameraIcon,
                                  height: sizes!.heightRatio * 17,
                                )
                                    // child: Image.asset(
                                    //   Assets.iconEditProfile,
                                    //   height: getHeightRatio() * 15,
                                    //   width: getHeightRatio() * 15,
                                    // )
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    MyText.M(
                      "Full Name",
                      arialFont: true,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.customTextField(
                        hintText: 'Enter your Full Name',
                        showShadow: false,
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: sizes!.heightRatio * 12,
                    ),
                    MyText.M(
                      "Email Address",
                      arialFont: true,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.customTextField(
                        hintText: 'Enter your Email ',
                        showShadow: false,
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: sizes!.heightRatio * 12,
                    ),
                    MyText.M(
                      "Phone Number ",
                      arialFont: true,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.customTextField(
                        hintText: '+12345678 ',
                        showShadow: false,
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: sizes!.heightRatio * 12,
                    ),
                    MyText.M(
                      "Password",
                      arialFont: true,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.passwordTextField(
                        hintText: 'Enter Password',
                        showShadow: false,
                        keyboardType: TextInputType.name,
                        onClick: () {}),
                    SizedBox(
                      height: sizes!.heightRatio * 12,
                    ),
                    MyText.M(
                      "ConfirmPassword",
                      arialFont: true,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.passwordTextField(
                        hintText: 'Enter Password',
                        showShadow: false,
                        keyboardType: TextInputType.name,
                        onClick: () {}),
                    SizedBox(
                      height: sizes!.heightRatio * 12,
                    ),
                    MyText.M(
                      "City",
                      color: AppColors.darkGreyColor,
                      arialFont: true,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.customTextField(
                        hintText: 'City ',
                        showShadow: false,
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: sizes!.heightRatio * 12,
                    ),
                    MyText.M(
                      "Delivery Address",
                      arialFont: true,
                      color: AppColors.darkGreyColor,
                    ),
                    SizedBox(
                      height: sizes!.heightRatio * 4,
                    ),
                    CommonWidgets.customTextField(
                        hintText: 'Delivery Address',
                        showShadow: false,
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                    CommonWidgets.mainButton("Save", onPress: () {
                      Navigator.pop(context);
                    }),
                    SizedBox(
                      height: sizes!.height * 0.035,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
