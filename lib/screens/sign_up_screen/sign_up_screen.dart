import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_chef/constants.dart';
import 'package:recipe_chef/global_widgets/custom_btn.dart';
import 'package:recipe_chef/global_widgets/custom_suffix.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final List<FocusNode> _focusNodes = [
    FocusNode(),
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
                'Welcome!',
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
                    InkWell(
                      child: CircleAvatar(
                        backgroundColor: kFillColor,
                        radius: 10.h,
                        child: SvgPicture.asset(
                          "assets/icons/image.svg",
                          height: 10.h,
                        ),
                      ),
                    ),
                    kSizedBox2,
                    buildFullNameField(),
                    kSizedBox2,
                    buildEmailField(),
                    kSizedBox2,
                    buildPasswordField(),
                    kSizedBox2,
                    kSizedBox2,
                    CustomBtn(
                      onPress: () {
                        //sign in
                        if (_formKey.currentState!.validate()) {
                          //go to home screen

                        }
                      },
                      title: 'Sign Up',
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

  TextFormField buildFullNameField() {
    return TextFormField(
      focusNode: _focusNodes[0],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: 'Full Name',
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/person.svg',
          iconColor:
              _focusNodes[0].hasFocus ? kTextPrimaryColor : kTextSecondaryColor,
        ),
      ),
      validator: (value) {
        if (value!.length < 4) {
          return 'Must be more than 4 characters';
        }
        return null;
      },
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      focusNode: _focusNodes[1],
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: 'Email or phone number',
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/email.svg',
          iconColor:
              _focusNodes[1].hasFocus ? kTextPrimaryColor : kTextSecondaryColor,
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
      focusNode: _focusNodes[2],
      obscureText: true,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: inputTextHintStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: CustomSuffixIcon(
          iconSrc: 'assets/icons/lock.svg',
          iconColor:
              _focusNodes[2].hasFocus ? kTextPrimaryColor : kTextSecondaryColor,
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
