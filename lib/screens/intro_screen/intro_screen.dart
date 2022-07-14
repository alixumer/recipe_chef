import 'package:flutter/material.dart';
import 'package:recipe_chef/constants.dart';
import 'package:recipe_chef/screens/sign_in_screen/sign_in_screen.dart';
import 'components/intro_components.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static String routeName = 'IntroScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomStack(),
          kSizedBox1,
          Text(
            'Start Cooking',
            style: Theme.of(context).textTheme.headline5,
          ),
          kSizedBox2,
          Text(
            "Let's join our community\nto cook better food!",
            style: Theme.of(context).textTheme.subtitle1,
            textAlign: TextAlign.center,
          ),
          kSizedBox2,
          kSizedBox2,
          kSizedBox2,
          IntroBtn(
            onPress: () {
              //go to next screen
              Navigator.pushNamedAndRemoveUntil(
                  context, SignInScreen.routeName, (route) => false);
            },
          ),
          kSizedBox2,
          kSizedBox2,
        ],
      ),
    );
  }
}
