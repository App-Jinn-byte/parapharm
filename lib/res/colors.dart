import 'package:flutter/material.dart';

Map<int, Color> colorCodes = {
  50: Color.fromRGBO(147, 205, 72, .1),
  100: Color.fromRGBO(147, 205, 72, .2),
  200: Color.fromRGBO(147, 205, 72, .3),
  300: Color.fromRGBO(147, 205, 72, .4),
  400: Color.fromRGBO(147, 205, 72, .5),
  500: Color.fromRGBO(147, 205, 72, .6),
  600: Color.fromRGBO(147, 205, 72, .7),
  700: Color.fromRGBO(147, 205, 72, .8),
  800: Color.fromRGBO(147, 205, 72, .9),
  900: Color.fromRGBO(147, 205, 72, 1),
};

class AppColors {
  static final appTheme = Color.fromRGBO(120, 149, 64, 1);
  static final appBackground = Color.fromRGBO(223, 237, 239, 1);
  static final buttonBlue = Color.fromRGBO(19, 31, 84, 1);
  static final whiteColor = Color.fromRGBO(248, 250, 254, 1);
  static const transparentColor = Color.fromRGBO(255, 255, 255, 0.0);
  static final signupColor = Color.fromRGBO(35, 40, 48, 1);
  static final shadowColor = Color.fromRGBO(93, 93, 93, 0.14);
  static final buttonColor = Color.fromRGBO(0, 63, 154, 1);
  static final arrowColor = Color.fromRGBO(174, 184, 196, 1);
  static final greenColor = Color.fromRGBO(24, 175, 100, 1);
  static final dialogueBoxColor = Color.fromRGBO(246, 246, 246, 1);
  static final dialogueBoxBarColor = Color.fromRGBO(219, 219, 219, 1);
  static final smallCardColor = Color.fromRGBO(227, 234, 242, 1);
  static const myMsgCardColor = Color.fromRGBO(240, 240, 240, 1);
  static const labelTextColor = Color.fromRGBO(81, 92, 111, 1);
  //Hex color code

  static final blueLight = "#2196F3";
  static final purpleLight = "#3F51B5";
  static final colorRedLight = "#d32f2f";
  static final colorWhite = "#ffebee";
  static final colorGreyLight = "#CFD8DC";
  static final colorGreyWhite = "#ECEFF1";

  // static final buttonBlue = "#131F54";
  // static final buttonBlueShadow = "#3C4C92D9";

  //text Colors
  static const txtfeildColor = Color.fromRGBO(81, 92, 111, 1);
  static const btnfeildColor = Color.fromRGBO(255, 255, 255, 1);
  static const admintxtColor = Color.fromRGBO(49, 49, 49, 1);
  static final borderColor = Color.fromRGBO(0, 0, 0, 0.08);
  static final borderGreyColor = Color.fromRGBO(240, 240, 240, 1);
  static final blueBorderColor = Color.fromRGBO(0, 63, 154, 1);
  static final hinTextColor = Color.fromRGBO(81, 92, 111, 1);
  static const divColor = Color.fromRGBO(0, 63, 154, 1);
  static const dotColor = Color.fromRGBO(0, 0, 0, 0.3);
  static const nameColor = Color.fromRGBO(35, 40, 48, 1);
  static const textFieldBorderColor = Color.fromRGBO(36, 126, 255, 1);

  // shadow colors
  static const cardShadow = Color.fromRGBO(0, 0, 0, 0.03);
  static const cardShadow2 = Color.fromRGBO(35, 40, 48, 0.08);

  // Rizwan Added colors
  static final Color blueColor = HexColor.fromHex("#003F9A");
  static final Color lightGrey = HexColor.fromHex("#70707029");
  static final Color greyColor = HexColor.fromHex("#515C6F");
  static final Color blackColor = HexColor.fromHex("#232830");
  static final Color backgroundColor = HexColor.fromHex("#F4F3F8");
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
