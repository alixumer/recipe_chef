import 'package:flutter/material.dart';
import 'package:recipe_chef/constants.dart';
import 'package:recipe_chef/global_widgets/custom_btn.dart';
import 'package:recipe_chef/global_widgets/custom_suffix.dart';
import 'package:recipe_chef/screens/sign_up_screen/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = 'SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: screensDefaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
              kSizedBox1,
              Text(
                'Please enter your account here',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              kSizedBox2,
              kSizedBox2,
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    buildEmailField(),
                    kSizedBox2,
                    buildPasswordField(),
                    kSizedBox2,
                    InkWell(
                      onTap: () {
                        //go to forgot password screen
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forgot Password',
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: kPrimaryColor),
                        ),
                      ),
                    ),
                    kSizedBox2,
                    kSizedBox2,
                    CustomBtn(
                      onPress: () {
                        //sign in
                        if(_formKey.currentState!.validate()){
                          //go to home screen

                        }
                      },
                      title: 'Sign In',
                    ),
                    kSizedBox2,
                    kSizedBox2,
                    Text(
                      'Or continue with',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    kSizedBox2,
                    kSizedBox2,
                    CustomIconBtn(
                      onPress: () {
                        //sign in with google
                      },
                      icon: 'assets/icons/google.svg',
                      title: 'Google',
                    ),
                    kSizedBox2,
                    kSizedBox2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Don't have any account?",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        InkWell(
                          onTap: () {
                            //go to sign up screen
                            Navigator.pushNamed(context, SignUpScreen.routeName);
                          },
                          child: Text(
                            "Sign Up Here",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      focusNode: _focusNodes[0],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: 'Email or phone number',
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/email.svg',
          iconColor:
              _focusNodes[0].hasFocus ? kTextPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        RegExp regExp = RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      focusNode: _focusNodes[1],
      obscureText: true,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/lock.svg',
          iconColor:
              _focusNodes[1].hasFocus ? kTextPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
        return null;
      },
    );
  }
}
