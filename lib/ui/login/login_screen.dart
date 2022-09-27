import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../common/common_utils.dart';
import '../../infraStructure/theme/app_theme.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                          if (userCred != null) {
                            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (Route<dynamic> route) => false);
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
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential authResult = await auth.signInWithCredential(credential);
    User? user = authResult.user;
    User currentUser = auth.currentUser!;
    /*  UserModel userModel= UserModel(name:"${user?.displayName}",email: "${user?.email}",);
    print('Nilesh =========>${user?.displayName},${user?.email}');
    FirebaseFirestore.instance.collection('users').doc().set(userModel as Map<String,dynamic>);*/
    return authResult;
  }

  Future<void> setUser() async {}
}
