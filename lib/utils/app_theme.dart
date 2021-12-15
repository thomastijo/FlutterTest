import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color primary = Color(0xff059131);
  static const Color primaryShadow = Color(0x10D69377);
  static const Color black = Color(0xFF1A1A1A);
  static const Color bg = Color(0xFFF5F6F7);
  static const Color bgRoom = Color(0xFFE5E4E2);
  static const Color blue = Color(0xffb8cef6);
  static const Color red = Color(0xFFF11717);
  static const Color vil = Color(0xff6d07ab);

  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 26.56,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static const TextStyle subTitleTextStyle = TextStyle(
    fontSize: 15.49,
    height: 1.7,
    fontWeight: FontWeight.w400,
    color: Color(0XFF525C67),
  );
  static const TextStyle skipText = TextStyle(
    fontSize: 17.71,
    fontWeight: FontWeight.w400,
    color: Color(0XFF757D85),
  );
  static const TextStyle nextStyle = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700, color: Colors.white);

  static const TextStyle  headingStyle = TextStyle(
    fontSize: 24 ,
    fontWeight: FontWeight.bold,
    color: AppTheme.black,
    height: 1.5,
  );

  static const TextStyle  heading13 = TextStyle(
    fontSize: 13 ,
    fontWeight: FontWeight.normal,
    color: AppTheme.black,
    height: 1.5,
  );

}

