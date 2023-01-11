import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const String googleApiKey = "AIzaSyDSsuvEinCmOlku-LrOuhZqIeinO2Fcu28";

const kPrimaryColor = Color(0xFF3B53AD);
const kSecondaryColor = Color(0xFF029161);
const kDarkColor = Color(0xFF111111);
const kGreyColor = Color(0xFFCCCCCC);
const kVerifiyColor = Colors.blue;
const kWhiteColor = Colors.white;
const kFadedBlack = Colors.black54;
const kBlackColor = Colors.black;

const kHeaderTextSize = 16.0;
const kLargeTextSize = 18.0;
const kMediumTextSize = 14.0;
const kSmallerTextSize = 12.0;

const kIconSize = 30.0;

SizedBox verticalSpace({double height = 8.0}) {
  return SizedBox(height: height);
}

SizedBox horizontalSpace({double width = 8.0}) {
  return SizedBox(width: width);
}

PageTransition routeTransition(Widget screen) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.fade,
    duration: const Duration(),
  );
}
