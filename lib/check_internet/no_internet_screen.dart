import 'package:flutter/material.dart';

class NoInternetScreen extends StatefulWidget {
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
        padding: EdgeInsets.all(kRadialReactionRadius),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/no_internet.png',
                height: kToolbarHeight, width: kToolbarHeight * 2, color: Theme.of(context).textTheme.headline5!.color, fit: BoxFit.contain),
            SizedBox(height: kRadialReactionRadius),
            Text('No Internet Connection', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 12),
            Text(
              'You are not connected to the internet. Make sure WI-FI is on. Airplane Mode is off and try again',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).iconTheme.color),
            ),
          ],
        ),
      ),
    );
  }
}
