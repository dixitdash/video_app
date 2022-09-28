import 'package:flutter/material.dart';
import 'package:video_call_app/infrastructure/common/utils/constants.dart';

import '../../infrastructure/common/utils/images.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({super.key});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(kRadialReactionRadius),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.imNoInternet,
              height: kToolbarHeight,
              width: kToolbarHeight * 2,
              color: Theme.of(context).textTheme.headline5!.color,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: kRadialReactionRadius,
            ),
            Text(
              Constants.noInternetConnection,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              Constants.noInternetWarning,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).iconTheme.color,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
