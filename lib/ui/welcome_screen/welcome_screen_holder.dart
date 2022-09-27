import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:video_call_app/ui/welcome_screen/welcome_screen.dart';
import 'package:video_call_app/ui/welcome_screen/welcome_screen_tab.dart';
import 'package:video_call_app/ui/welcome_screen/welcome_screen_web.dart';


class WelcomeScreenHolder extends StatefulWidget {
  const WelcomeScreenHolder({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenHolder> createState() => _WelcomeScreenHolderState();
}

class _WelcomeScreenHolderState extends State<WelcomeScreenHolder> {
  List<String> items = [
    'Video call on a smartphone\n \nIf they have the capacity, smartphones have built-in application for video calls that vary from brand to brand. ',
    'Video call on a tablet\n \nTablets require an application for making video calls. Again, Skype is an option, and other downloadable apps. Not all tablets include a built-in camera, so make sure your tablet has this feature before trying to make a video call.',
    'Video call on a computer\n \nAdditional software is often required. One such program is Skype, which allows for video calls, and normal voice calls, using an Internet connection.'
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const WelcomeScreen(),
      tablet: (BuildContext context) => const WelcomeScreenTab(),
      desktop: (BuildContext context) => const WelcomeScreenWeb(),
    );
  }
}
