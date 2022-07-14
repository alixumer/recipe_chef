import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const Color kScaffoldColor = Color(0xFFFFFFFF);
const Color kPrimaryColor = Color(0xFF239B56);
const Color kSecondaryColor = Color(0xFF28B463);
const Color kTextPrimaryColor = Color(0xFF3E5481);
const Color kTextSecondaryColor = Color(0xFF9FA5C0);
const Color kTextWhiteColor = Color(0xFFFDFEFE);
const Color kErrorBorderColor = Color(0xFFF94C66);
const Color kErrorBorderColor2 = Color(0xFFCB4335);
const Color kFillColor = Color(0xFFF4F5F7);
const Color kIconColor = Color(0xFF3E5481);

final kSizedBox1 = SizedBox(
  height: 1.h,
);

final kSizedBox2 = SizedBox(
  height: 2.h,
);

final screensDefaultPadding = EdgeInsets.only(left: 4.w, right: 4.w);

final inputTextHintStyle = GoogleFonts.lato().copyWith(
  fontSize: SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 11.sp,
  letterSpacing: 1.0,
  color: kTextPrimaryColor,
);

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
