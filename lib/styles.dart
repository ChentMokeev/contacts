import 'package:flutter/material.dart';

var kBoxShadowColor = const Color(0xffDED9FF);
var kButtonColor = const Color(0xffF90640);
var kBackgroundColor = const Color(0xff9F8A8A);

var h1 = const TextStyle(
  fontSize: 18,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);

var boxShadowStyle = BoxShadow(
  color: kBoxShadowColor,
  spreadRadius: 0,
  blurRadius: 10,
  offset: const Offset(0, 0),
);

var kTitleTextStyle = const TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);

var kSubTitleTextStyle = const TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w400,
  color: Color(0xffBDBDBD),
);

var outlineWrap = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      kButtonColor,
      Color(0xff8F00FF),
    ],
  ),
);

var decorItem = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(15),
  boxShadow: [
    boxShadowStyle,
  ],
);

var companyItemStyle = BoxDecoration(
  boxShadow: [
    boxShadowStyle,
  ],
);

var companyItemImg = BoxDecoration(
  // color: Colors.white,
  borderRadius: const BorderRadius.only(
    topRight: Radius.circular(8),
    topLeft: Radius.circular(8),
  ),
  boxShadow: [
    boxShadowStyle,
  ],
  gradient: const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xffD96DFF),
      Color(0xff6322E0),
    ],
  ),
);

var companyItemTitle = const BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(8),
    bottomLeft: Radius.circular(8),
  ),
  color: Colors.white,
);
