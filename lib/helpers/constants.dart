import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const kPrimaryColor = Color(0xFF3B53AD);
const kSecondaryColor = Color(0xFF029161);
const kDarkColor = Color(0xFF111111);
const kGreyColor = Color(0xFFCCCCCC);
const kVerifiyColor = Colors.blue;
const kWhiteColor = Colors.white;
const kFadedBlack = Colors.black54;
const kBlackColor = Colors.black;

PageTransition routeTransition(Widget screen) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.fade,
    duration: const Duration(),
  );
}
