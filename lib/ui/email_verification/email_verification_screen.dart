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
  Timer? _timer;
  int _start = 25;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          timer.cancel();
          setState(() {});
        } else {
          _start--;
          setState(() {});
        }
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    setState(() {});
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
              children: [
                const Text(
                  Constants.sendEmailLink,
                ),
                TextButton(
                  onPressed: () {
                    startTimer();

                  },
                  child: const Text(
                    'Resend',
                  ),
                ),
                Text("$_start"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
