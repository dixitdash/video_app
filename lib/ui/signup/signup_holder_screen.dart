import 'package:flutter/material.dart';
import 'package:video_call_app/ui/signup/signup_screen.dart';
import 'package:video_call_app/ui/signup/signup_screen_tab.dart';
import 'package:video_call_app/ui/signup/signup_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupHolderScreen extends StatefulWidget {
  const SignupHolderScreen({Key? key}) : super(key: key);

  @override
  State<SignupHolderScreen> createState() => _SignupHolderScreenState();
}

class _SignupHolderScreenState extends State<SignupHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const SignupScreen(),
      tablet: (BuildContext context) => const SignupScreenTab(),
      desktop: (BuildContext context) => const SignupScreenWeb(),
    );;
  }
}
