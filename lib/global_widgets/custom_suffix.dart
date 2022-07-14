import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon(
      {Key? key, required this.iconSrc, required this.iconColor})
      : super(key: key);
  final String iconSrc;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.w),
      child: SvgPicture.asset(
        iconSrc,
        height: 5.sp,
        width: 5.sp,
        color: iconColor,
      ),
    );
  }
}
