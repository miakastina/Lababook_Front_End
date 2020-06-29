import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Spacing
const kSpacingUnit = 10.0;

class MyColors {
  static const Color primaryColor = Color(0xFF3E45B9);
  static const Color primaryColorLight = Color(0xFF6252A7);

// color yg harus diganti
  static const kTextColor = Color(0xFF151C2A);
  static const kTextSecondaryColor = Color(0xFF7E8EAA);
  static const kPrimaryColor = Color(0xFF5D92EB);
  static const kGreenColor = Color(0xFF30C96B);
  static const kRedColor = Color(0xFFEE6B8D);
  static const kPurpleColor = Color(0xFFC482F9);
  static const kBackgroundColor = Color(0xFFFFFFFF);
  static const kLineColor = Color(0xFFEAEEF4);
  static const kShadowColor1 = Color.fromRGBO(149, 190, 207, 0.50);
  static const kShadowColor2 = Color(0xFFCFECF8);
  static const kShadowColor3 = Color.fromRGBO(0, 0, 0, 0.10);
  static const kShadowColor4 = Color.fromRGBO(207, 236, 248, 0.50);
  static const kShadowColor5 = Color.fromRGBO(238, 226, 255, 0.70);
}

// My Text Styles
final kHeadingTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(24),
  color: MyColors.kTextColor,
  fontWeight: FontWeight.w600,
);

final kSubheaderTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(20),
  color: MyColors.kTextColor,
  fontWeight: FontWeight.w600,
);

final kTitleTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(16),
  color: MyColors.kTextColor,
);

final kBodyTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(13),
  color: MyColors.kTextSecondaryColor,
);

final kCaptionTextStyle = TextStyle(
  fontSize: ScreenUtil().setSp(10),
  color: MyColors.kTextSecondaryColor,
);

final kNumberTitleTextStyle = TextStyle(
  fontFamily: 'TTNorms',
  fontSize: ScreenUtil().setSp(22),
  fontWeight: FontWeight.w500,
  color: MyColors.kTextColor,
);

// final kCardTextStyle = TextStyle(
//   fontFamily: 'TTNorms',
//   color: Colors.white,
//   shadows: [
//     BoxShadow(
//       color: kShadowColor3,
//       blurRadius: kSpacingUnit.w,
//       offset: Offset(0, kSpacingUnit.w * 0.5),
//     ),
//   ],
// );
