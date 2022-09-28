import 'package:flutter/material.dart';
import 'package:video_call_app/infrastructure/common/utils/constants.dart';

import '../../infrastructure/repository/auth_repository.dart';
import '../login/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _authRepo = AuthRepository.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          48.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Center(
              child: Text(
                Constants.register,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/splash.png",
              scale: 5,
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () async {
                await _authRepo.signOutGoogle();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginScreen(),
                    ),
                    ModalRoute.withName('/'));
              },
              child: const Padding(
                padding: EdgeInsets.all(
                  8.0,
                ),
                child: Text(
                  Constants.signOut,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
