import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_call_app/common_metod.dart';
import 'package:video_call_app/login_screen.dart';
import 'package:video_call_app/signup_screen.dart';
import 'package:video_call_app/theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> items = [
    'Video call on a smartphone\n \nIf they have the capacity, smartphones have built-in application for video calls that vary from brand to brand. ',
    'Video call on a tablet\n \nTablets require an application for making video calls. Again, Skype is an option, and other downloadable apps. Not all tablets include a built-in camera, so make sure your tablet has this feature before trying to make a video call.',
    'Video call on a computer\n \nAdditional software is often required. One such program is Skype, which allows for video calls, and normal voice calls, using an Internet connection.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CustomMainScreen.image,
              ),
            ),
            Expanded(
              flex: 3,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                ),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: items[index],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.transparentColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 2,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FloatingActionButton.extended(
                        backgroundColor: AppTheme.greenColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        label: const Text('Get Started'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 20),
                      child: FloatingActionButton.extended(
                        backgroundColor: AppTheme.blackColor,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
                        },
                        label: const Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
