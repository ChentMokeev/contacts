import 'package:flutter/cupertino.dart';
import 'package:test_proj/assets/colors.dart';

class PhoneNumbersTextStyles {
  static const TextStyle fSize20W700 = TextStyle(
    fontFamily: 'Museo Sans Cyrl',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: PhoneNumbersColors.textPrimaryColor,
  );

  static const TextStyle fSize20W500 = TextStyle(
    fontFamily: 'Museo Sans Cyrl',
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle fSize16W700Black = TextStyle(
    fontFamily: 'Museo Sans Cyrl',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    color: PhoneNumbersColors.textPrimaryColor, //Color(0xff3B81EA),
  );

  static const TextStyle fSize16W700Blue = TextStyle(
    fontFamily: 'Museo Sans Cyrl',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    color: PhoneNumbersColors.textBlueColor, //Color(0xff3B81EA),
  );

  static const TextStyle fSize12W400 = TextStyle(
    fontFamily: 'Museo Sans Cyrl',
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    color: PhoneNumbersColors.subTitleTextColor,
  );
}
