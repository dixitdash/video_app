import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_call_app/common_metod.dart';
import 'package:video_call_app/theme.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CustomMainScreen.image,
              ),
            ),
           /* CarouselSlider(items: items, options: options),*/
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.transparentColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
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
                        onPressed: () {},
                        label: const Text('Get Started'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 20),
                      child: FloatingActionButton.extended(
                        backgroundColor: AppTheme.blackColor,
                        onPressed: () {},
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
