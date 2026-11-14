import 'package:flutter/material.dart';

abstract class TextStyles {
  static const String fontFamily = 'Inter';
  static const double defaultLetterSpacing = 0.1;

  static final TextStyle title1 = TextStyle(
    fontSize: 20,
    height: 25 / 20,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily,
    letterSpacing: defaultLetterSpacing,
  );

  static final TextStyle title2 = TextStyle(
    fontSize: 16,
    height: 20 / 16,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    letterSpacing: defaultLetterSpacing,
  );

  static final TextStyle body = TextStyle(
    fontSize: 16,
    height: 23 / 16,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    letterSpacing: defaultLetterSpacing,
  );

  static final TextStyle subtitle1 = TextStyle(
    fontSize: 14,
    height: 17 / 14,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    letterSpacing: defaultLetterSpacing,
  );

  static final TextStyle subtitle2 = TextStyle(
    fontSize: 14,
    height: 19 / 14,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily,
    letterSpacing: defaultLetterSpacing,
  );

  static final TextStyle caption = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
    fontFamily: fontFamily,
    letterSpacing: defaultLetterSpacing,
  );
}
