import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_chef/constants.dart';
import 'package:sizer/sizer.dart';

import 'screens/intro_screen/intro_screen.dart';
import 'screens/sign_in_screen/sign_in_screen.dart';
import 'screens/sign_up_screen/sign_up_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Recipe Chef',
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: kScaffoldColor,
            textTheme: GoogleFonts.latoTextTheme().copyWith(
              headline4: TextStyle(
                fontWeight: FontWeight.w800,
                color: kTextPrimaryColor,
                fontSize:
                    SizerUtil.deviceType == DeviceType.tablet ? 18.sp : 20.sp,
              ),
              headline5: TextStyle(
                fontWeight: FontWeight.w700,
                color: kTextPrimaryColor,
                fontSize: 18.sp,
              ),
              subtitle1: TextStyle(
                fontWeight: FontWeight.w300,
                color: kTextSecondaryColor,
                fontSize: 13.sp,
              ),
              subtitle2: TextStyle(
                fontWeight: FontWeight.w300,
                color: kTextSecondaryColor,
                fontSize:
                    SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 10.sp,
              ),
              button: TextStyle(
                letterSpacing: 0.5,
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
                color: kTextWhiteColor,
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              floatingLabelStyle: const TextStyle(color: kTextPrimaryColor),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              labelStyle: inputTextHintStyle.copyWith(
                color: kTextSecondaryColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: kTextSecondaryColor, style: BorderStyle.solid),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: kTextSecondaryColor.withOpacity(0.6),
                    style: BorderStyle.solid),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: kPrimaryColor, style: BorderStyle.solid),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: kErrorBorderColor, style: BorderStyle.solid),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                    color: kErrorBorderColor, style: BorderStyle.solid),
              ),
            ),
          ),
          initialRoute: IntroScreen.routeName,
          routes: <String, WidgetBuilder>{
            IntroScreen.routeName: (context) => IntroScreen(),
            SignInScreen.routeName: (context) => SignInScreen(),
            SignUpScreen.routeName: (context) => SignUpScreen(),
          },
        );
      },
    );
  }
}
