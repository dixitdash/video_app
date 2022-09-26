import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../login/login_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Center(
              child: Text(
                'Welcome User',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 40),
            Image.asset(
              "assets/images/splash.png",
              scale: 5,
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () async {
                await signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }), ModalRoute.withName('/'));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 25, color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  signOutGoogle() async{
      await GoogleSignIn().signOut();
      print("User Sign Out");
    }


}
