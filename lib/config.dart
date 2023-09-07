import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Config
{
  static MediaQueryData? mediaQueryData;
  static double? scWidth;
  static double? scHeight;

  //initialization of width & height
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    scWidth = mediaQueryData!.size.width;
    scHeight = mediaQueryData!.size.height;
  }

  static const primaryColor=Colors.black;

  static const primaryFontArabic='Amiri';

  static const primaryWeightArabic=FontWeight.w700;

  static const smallTextColor=Color(0xffBB8FCE);

  static const smallTextFont='Noto Naskh Arabic';

  static const colorGrey=Color(0xffBFC9CA);

  static const primaryFontEnglish='Vidaloka';

  static const primaryWeightEnglish=FontWeight.w800;


}
