import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call_app/infrastructure/common/utils/constants.dart';

import '../../infraStructure/theme/app_theme.dart';
import '../../infrastructure/common/utils/images.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  Timer? resendTimer;
  int startTime = 25;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    resendTimer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (startTime == 0) {
          startTime = 0;
          timer.cancel();
        } else {
          startTime--;
        }
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    resendTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Images.lottieCheckEmail,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 80.0,
                bottom: 20.0,
              ),
              child: Text(
                style: Theme.of(context).textTheme.headlineSmall,
                Constants.checkYourEmail,
              ),
            ),
            Text(
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
              Constants.checkYourEmail_2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 20,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  Constants.sendEmail,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppTheme.darkPrimaryColor,
                      ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  Constants.sendEmailLink,
                ),
                TextButton(
                  onPressed: () {
                    startTimer();
                  },
                  child: Text(
                    resendTimer == null ? Constants.resend : "${Constants.resendLinkIn} ${startTime}s",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
