import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:parapharm/res/assets.dart';
import 'package:parapharm/res/colors.dart';
import 'package:parapharm/res/res.dart';

class CommonWidgets {
  static Widget bottomSheet(
      {required BuildContext context,
      required Function? onCamera,
      required Function? onGallery}) {
    return Container(
      height: getHeight() * 0.15,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontSize: sizes!.extraLargeFontSize,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: const Icon(Icons.camera_alt_outlined,
                    color: AppColors.txtfeildColor),
                onPressed: () => onCamera!(),
                label: const Text('Camera',
                    style: TextStyle(color: AppColors.txtfeildColor)),
              ),
              TextButton.icon(
                icon: const Icon(Icons.image_outlined,
                    color: AppColors.txtfeildColor),
                onPressed: () => onGallery!(),
                label: const Text('Gallery',
                    style: TextStyle(color: AppColors.txtfeildColor)),
              ),
            ],
          )
        ],
      ),
    );
  }

  static Widget customText(
      {required text,
      required color,
      @required size,
      @required lines,
      @required fontWeight,
      @required fontSize,
      @required alignment,
      required fontFamily,
      int? maxLines,
      String? textAlign}) {
    maxLines ??= 1;
    textAlign ??= 'notCenter';

    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign == 'center' ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        color: color,
        fontSize: fontSize ?? getFontRatio() * 14,
        fontFamily: fontFamily,
      ),
    );
  }

  static Widget customAppBar(
      {required String title, var icon, Function? onOption}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.hamburgerIcon),
        Text(title),
        Image.asset(Assets.cartIcon),
      ],
    );
  }

  static Widget customNameTextField(
      {required placeHolder,
      required String text,
      @required TextEditingController? textEditingController}) {
    return Container(
      width: sizes!.width,
      height: getHeightRatio() * 60,
      padding: const EdgeInsets.only(left: 21, right: 20, top: 15),
      margin: EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
      //vertical: getHeightRatio() * 0, horizontal: getWidthRatio() * 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 32,
            offset: const Offset(15, 15),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextField(
          controller: textEditingController,
          maxLines: 2,
          keyboardType: TextInputType.multiline,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            isDense: true,
            hintText: placeHolder ?? "",
            labelText: text,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoMedium,
                fontSize: getFontRatio() * 14),
            hintStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoRegular,
                fontSize: getFontRatio() * 15),
            contentPadding: EdgeInsets.only(bottom: getHeightRatio() * 0),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static Widget mainButton(String text, {required VoidCallback onPress}) {
    return Container(
      width: sizes!.widthRatio * 320,
      height: sizes!.heightRatio * 45,
      margin: EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.btnfeildColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: AppColors.buttonColor,
      ),
      child: TextButton(
        onPressed: () {
          onPress();

          // if (onPress != null) {
          //   onPress();
          // }
        },
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.btnfeildColor,
            fontSize: 13 * getFontRatio(),
            fontFamily: Assets.robotoBold,
          ),
        ),
      ),
    );
  }

  static Widget customImgTextField(
      {required placeHolder,
      required String text,
      required image,
      @required TextEditingController? textEditingController}) {
    return Container(
      width: sizes!.width,
      height: getHeightRatio() * 60,
      padding: const EdgeInsets.only(left: 21, right: 20, top: 15),
      margin: EdgeInsets.symmetric(horizontal: sizes!.pagePadding),
      //vertical: getHeightRatio() * 0, horizontal: getWidthRatio() * 20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 32,
            offset: const Offset(15, 15),
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: TextField(
          controller: textEditingController,
          maxLines: 2,
          keyboardType: TextInputType.multiline,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            isDense: true,
            hintText: placeHolder ?? "",
            labelText: text,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoRegular,
                fontSize: getFontRatio() * 14),
            hintStyle: TextStyle(
                color: AppColors.txtfeildColor,
                fontFamily: Assets.robotoRegular,
                fontSize: getFontRatio() * 15),
            contentPadding: EdgeInsets.only(bottom: getHeightRatio() * 0),
            border: InputBorder.none,
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidthRatio() * 8,
                  vertical: getHeightRatio() * 8),
              child: Image.asset(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  static Widget customBlueButton(
      {required double height,
      required double width,
      required String text,
      @required Function? press}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: height * getHeightRatio(),
        width: width * getWidthRatio(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(0, 63, 154, 1),
            elevation: 1.0,
            side: const BorderSide(
              color: Colors.white,
              width: 0.5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: () {
            if (press != null) {
              press.call();
            }
          },
          child: Text(
            text.toString(),
            style: TextStyle(
              fontSize: 12 * getFontRatio(),
              color: Colors.white,
              letterSpacing: 1,
              fontFamily: Assets.robotoBold,
            ),
          ),
        ),
      ),
    );
  }

  //
  static Widget customRowButton(
      {required String firstText,
      required String colorText,
      @required Function? press}) {
    return TextButton(
      style: TextButton.styleFrom(),
      onPressed: () {
        if (press != null) {
          press.call();
        }
      },
      child: RichText(
        text: TextSpan(
          text: firstText,
          style: TextStyle(
            fontFamily: Assets.robotoRegular,
            color: const Color.fromRGBO(81, 92, 111, 1),
            fontSize: 12 * getFontRatio(),
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: colorText,
              style: TextStyle(
                color: const Color.fromRGBO(0, 63, 154, 1),
                fontFamily: Assets.robotoBold,
                fontSize: 12 * getFontRatio(),
                fontWeight: FontWeight.w800,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  static Widget customTextField(
      {required String labeltext,
      required String hintext,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 60 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(93, 93, 93, 0.08),
            blurRadius: 32,
            offset: Offset(15, 15),
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 13),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(27),
          ),
          border: InputBorder.none,
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              fontFamily: Assets.robotoMedium,
              letterSpacing: 1.5,
              color: const Color.fromRGBO(81, 92, 111, .50),
              fontSize: 15.5 * getFontRatio(),
              fontWeight: FontWeight.bold),
          hintText: hintext,
          hintStyle: TextStyle(
              height: 4.0,
              fontFamily: Assets.robotoRegular,
              color: const Color.fromRGBO(81, 92, 111, 1),
              fontSize: 15 * getFontRatio(),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  static Widget customTextFieldForDialogTextField(
      {required String labeltext,
      required String hintext,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Container(
      height: sizes!.height * 0.20,
      width: sizes!.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.textFieldBorderColor, width: 1),
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(93, 93, 93, 0.08),
            blurRadius: 32,
            offset: Offset(15, 15),
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        maxLines: 60,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 25, right: 25, top: 12, bottom: 8),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.circular(27),
          ),
          border: InputBorder.none,
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              fontFamily: Assets.robotoMedium,
              letterSpacing: 1.5,
              color: const Color.fromRGBO(81, 92, 111, .50),
              fontSize: 15.5 * getFontRatio(),
              fontWeight: FontWeight.bold),
          hintText: hintext,
          hintStyle: TextStyle(
              // height: 4.0,
              fontFamily: Assets.robotoRegular,
              color: const Color.fromRGBO(81, 92, 111, 1),
              fontSize: 15 * getFontRatio(),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  //
  static Widget phoneNumberField(
      {required String labeltext,
      required String hintext,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      height: 60 * getHeightRatio(),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(93, 93, 93, 0.08),
            blurRadius: 32,
            offset: Offset(15, 15),
          ),
        ],
      ),
      child: TextFormField(
        autofocus: false,
        controller: controller,
        keyboardType: keyboardType,
        inputFormatters: [LengthLimitingTextInputFormatter(11)],
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          isDense: true,
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(27),
          ),
          border: InputBorder.none,
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
              fontFamily: Assets.robotoMedium,
              letterSpacing: 1.5,
              color: const Color.fromRGBO(81, 92, 111, .50),
              fontSize: 15.5 * getFontRatio(),
              fontWeight: FontWeight.bold),
          hintText: hintext,
          hintStyle: TextStyle(
              height: 4.0,
              fontFamily: Assets.robotoRegular,
              color: const Color.fromRGBO(81, 92, 111, 1),
              fontSize: 15 * getFontRatio(),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  //
  static Widget customPasswordTextField(
      {required String labeltext,
      required String hintext,
      required bool hidePassword,
      required VoidCallback onClick,
      @required TextEditingController? controller,
      required TextInputType keyboardType}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 60 * getHeightRatio(),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(27),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(93, 93, 93, 0.08),
              blurRadius: 32,
              offset: Offset(15, 15),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: hidePassword,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            isDense: true,
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(27),
            ),
            border: InputBorder.none,
            labelText: labeltext,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(
                fontFamily: Assets.robotoMedium,
                letterSpacing: 1.5,
                color: const Color.fromRGBO(81, 92, 111, .50),
                fontSize: 15.5 * getFontRatio(),
                fontWeight: FontWeight.bold),
            hintText: hintext,
            hintStyle: TextStyle(
                height: 4.0,
                fontFamily: Assets.robotoRegular,
                color: const Color.fromRGBO(81, 92, 111, 1),
                fontSize: 15 * getFontRatio(),
                fontWeight: FontWeight.w500),
            suffixIcon: GestureDetector(
              onTap: onClick,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidthRatio() * 10,
                    vertical: getHeightRatio() * 5),
                child: hidePassword
                    ? Icon(Icons.visibility_off,
                        color: AppColors.buttonBlue, size: sizes!.width * 0.055)
                    : Icon(
                        Icons.remove_red_eye,
                        color: AppColors.lightGrey,
                        size: sizes!.width * 0.055,
                      ),
                // child: Image.asset(
                //   hidePassword ? Assets.eyeIcon : Assets.visibleIcon,
                //   height: sizes!.width*0.001,
                //   // cacheHeight: 18,
                //   width: sizes!.width*0.001,
                //   // cacheWidth: 18,
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
  static Widget borderBox(
      {required Widget child,
      @required EdgeInsets? padding,
      required double width,
      required double height}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: width * getWidthRatio(),
          height: height * getFontRatio(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          padding: padding ?? const EdgeInsets.all(8.0),
          child: Center(child: child),
        ),
      ),
    );
  }

  //
  static Widget imageTextField(
      {required labeltext,
      required hintext,
      required bool isImage,
      required Function onPress,
      @required TextEditingController? controller}) {
    return GestureDetector(
      onTap: () {
        onPress.call();
      },
      child: Container(
        height: 60 * getHeightRatio(),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(27),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(93, 93, 93, 0.08),
              blurRadius: 32,
              offset: Offset(15, 15),
            ),
          ],
        ),
        child: TextFormField(
            controller: controller,
            enabled: false,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 16),
              focusedBorder: InputBorder.none,
              isDense: true,
              border: InputBorder.none,
              labelText: labeltext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: TextStyle(
                  fontFamily: Assets.robotoMedium,
                  letterSpacing: 1.5,
                  color: const Color.fromRGBO(81, 92, 111, .50),
                  fontSize: 15.5 * getFontRatio(),
                  fontWeight: FontWeight.bold),
              hintText: hintext,
              hintStyle: TextStyle(
                  height: 3.5,
                  fontFamily: Assets.robotoRegular,
                  color: const Color.fromRGBO(81, 92, 111, 1),
                  fontSize: 15 * getFontRatio(),
                  fontWeight: FontWeight.w500),
              suffixIcon: isImage == true
                  ? Container(
                      width: getWidth() * 0.01,
                      // height: getHeight()*0.01,
                      margin:
                          EdgeInsets.symmetric(horizontal: getWidth() * 0.04),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyColor),
                        shape: BoxShape.circle,
                      ),
                    )
                  : Image.asset(
                      Assets.checkIcon,
                      height: getWidth() * 0.02,
                      width: getWidth() * 0.1,
                    ),
            )),
      ),
    );
  }

  static Widget addVerticalSpace(double height) {
    return SizedBox(height: height * getHeightRatio());
  }

  static Widget addHorizontalSpace(double width) {
    return SizedBox(width: width * getWidthRatio());
  }

  static Widget loading({double? height, double? width}) {
    return Center(
      child: Container(
        width: width ?? getWidth() * 0.35,
        height: height ?? getHeight() * 0.35,
        child: Lottie.asset(
          Assets.apiLoading,
        ),
      ),
    );
  }

  static Widget noDataText({String? text}) {
    return Center(
      child: Text(
        text ?? "No Job Available",
        maxLines: 1,
        style: TextStyle(
            fontFamily: Assets.robotoBold,
            fontSize: sizes?.largeFontSize,
            color: AppColors.blackColor),
      ),
    );
  }
}
