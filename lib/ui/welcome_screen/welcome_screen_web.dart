import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:video_call_app/ui/signup/signup_screen.dart';
import 'package:video_call_app/ui/login/login_screen.dart';
import '../../infrastructure/theme/app_theme.dart';
import '../common/common_utils.dart';

class WelcomeScreenWeb extends StatefulWidget {
  const WelcomeScreenWeb({Key? key}) : super(key: key);

  @override
  State<WelcomeScreenWeb> createState() => _WelcomeScreenWebState();
}

class _WelcomeScreenWebState extends State<WelcomeScreenWeb> {
  List<String> items = [
    'Video call on a smartphone\n \nIf they have the capacity, smartphones have built-in application for video calls that vary from brand to brand. ',
    'Video call on a tablet\n \nTablets require an application for making video calls. Again, Skype is an option, and other downloadable apps. Not all tablets include a built-in camera, so make sure your tablet has this feature before trying to make a video call.',
    'Video call on a computer\n \nAdditional software is often required. One such program is Skype, which allows for video calls, and normal voice calls, using an Internet connection.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CommonUtils.image,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Text(
                    textAlign: TextAlign.center,
                    items[index],
                    style: Theme.of(context).textTheme.bodyText2,
                  );
                },
                autoplay: true,
                itemCount: items.length,
                viewportFraction: 0.98,
                pagination:  SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    color: Theme.of(context).cardColor,
                    activeColor: AppTheme.secondaryColor
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        label: Text(
                          'Get Started',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 20),
                      child: FloatingActionButton.extended(
                        backgroundColor: AppTheme.darkPrimaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        label: Text(
                          'Login',
                          style: Theme.of(context).textTheme.button,
                        ),
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
