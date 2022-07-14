import 'package:flutter/material.dart';
import 'package:recipe_chef/constants.dart';
import 'package:sizer/sizer.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: const [
          CustomPositionWidget(
              top: 100,
              left: 201,
              width: 104,
              height: 104,
              rad1: 52,
              rad2: 52,
              rad3: 52,
              img: 'assets/images/Steak.jpg'),
          CustomPositionWidget(
              top: 124,
              left: 47,
              width: 88,
              height: 88,
              rad1: 60,
              rad2: 60,
              rad3: 60,
              img: 'assets/images/BakedPizza.jpg'),
          CustomPositionWidget(
              top: 203,
              left: 335,
              width: 72,
              height: 72,
              rad1: 44,
              rad2: 44,
              rad3: 44,
              img: 'assets/images/Carbonara.jpg'),
          CustomPositionWidget(
              top: 221,
              left: 107,
              width: 160,
              height: 160,
              rad1: 80,
              rad2: 80,
              rad3: 80,
              img: 'assets/images/salad.jpg'),
          CustomPositionWidget(
              top: 267,
              left: -33,
              width: 104,
              height: 104,
              rad1: 50,
              rad2: 50,
              rad3: 50,
              img: 'assets/images/pencake.jpg'),
          CustomPositionWidget(
              top: 299,
              left: 289,
              width: 56,
              height: 56,
              rad1: 80,
              rad2: 80,
              rad3: 80,
              img: 'assets/images/pizza.jpg'),
          CustomPositionWidget(
              top: 402,
              left: 181,
              width: 88,
              height: 88,
              rad1: 80,
              rad2: 80,
              rad3: 80,
              img: 'assets/images/salad.jpg'),
          CustomPositionWidget(
              top: 385,
              left: 48,
              width: 72,
              height: 72,
              rad1: 80,
              rad2: 80,
              rad3: 80,
              img: 'assets/images/FriedPotatoes.jpg'),
        ],
      ),
    );
  }
}

class CustomPositionWidget extends StatelessWidget {
  const CustomPositionWidget(
      {Key? key,
      required this.top,
      required this.left,
      required this.width,
      required this.height,
      required this.rad1,
      required this.rad2,
      required this.rad3,
      required this.img})
      : super(key: key);
  final double top, left;
  final double width, height;
  final double rad1, rad2, rad3;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(1.w),
        decoration: BoxDecoration(
          color: kErrorBorderColor,
          borderRadius: BorderRadius.circular(rad1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(rad2),
          child: SizedBox.fromSize(
            size: Size.fromRadius(rad3),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class IntroBtn extends StatelessWidget {
  const IntroBtn({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPress,
      child: Container(
        width: 90.w,
        height: 7.h,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
