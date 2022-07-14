import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_chef/constants.dart';
import 'package:sizer/sizer.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({Key? key, required this.onPress, required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 100.w,
        height: SizerUtil.deviceType == DeviceType.tablet ? 10.h : 7.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.6, 0.0),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: kTextWhiteColor,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
      ),
    );
  }
}

class CustomIconBtn extends StatelessWidget {
  const CustomIconBtn(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.icon})
      : super(key: key);
  final VoidCallback onPress;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 100.w,
        height: SizerUtil.deviceType == DeviceType.tablet ? 10.h : 7.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [kErrorBorderColor, kErrorBorderColor2],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.6, 0.0),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 20.sp,
                width: 20.sp,
                color: kTextWhiteColor,
              ),
              SizedBox(
                width: 2.w,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
