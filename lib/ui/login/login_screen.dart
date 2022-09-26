import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../common/common_utils.dart';
import '../../infraStructure/theme/app_theme.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance.currentUser?.uid;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: CommonUtils.image,
              ),
            ),
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
                        onPressed: () async {
                          UserCredential? userCred = await signInWithGoogle();
                          setUser();
                          if (userCred != null) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                                (Route<dynamic> route) => false);
                          } else {
                            return;
                          }
                        },
                        label: Row(
                          children: [
                            Image.asset(
                              'assets/images/google_logo.png',
                              height: 50,
                            ),
                            const Text('Google Login'),
                          ],
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

  Future<UserCredential?> signInWithGoogle() async {
    final FirebaseAuth auth = FirebaseAuth.instance;

    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential authResult = await auth.signInWithCredential(credential);
    User? user = authResult.user;

    assert(await user?.getIdToken() != null);
    User currentUser = auth.currentUser!;
    assert(user?.uid == currentUser.uid);
    print("User Name: ${user?.displayName}");
    print("User Email: ${user?.email}");
    print("User id: ${user?.uid}");
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> setUser() async {}
}
