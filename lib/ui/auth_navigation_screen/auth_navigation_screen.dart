import 'dart:async';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../check_internet/no_internet_screen.dart';

class AuthNavigationScreen extends StatefulWidget {
  final Widget child;

  const AuthNavigationScreen({Key? key, required this.child}) : super(key: key);

  @override
  State<AuthNavigationScreen> createState() => _AuthNavigationScreenState();
}

class _AuthNavigationScreenState extends State<AuthNavigationScreen> {
  StreamSubscription? internetConnection;
  bool isOffline = false;

  @override
  void initState() {
    internetConnection = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) {
        if (result == ConnectivityResult.none) {
          isOffline = true;
        } else if (result == ConnectivityResult.mobile) {
          isOffline = false;
        } else if (result == ConnectivityResult.wifi) {
          isOffline = false;
        }
        setState(() {});
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    internetConnection!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: isOffline,
          child: const NoInternetScreen(),
        ),
        Visibility(
          visible: !isOffline,
          child: widget.child,
        ),
      ],
    );
  }
}
