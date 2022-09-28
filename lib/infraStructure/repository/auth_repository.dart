import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:video_call_app/infrastructure/repository/user_repository.dart';

class AuthRepository {
  static final AuthRepository instance = AuthRepository._i();

  factory AuthRepository() {
    return instance;
  }

  AuthRepository._i();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  final userRepository = UserRepository.instance;

  // Google Signing
  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential authResult = await auth.signInWithCredential(credential);
    return authResult;
  }

  // Google SignOut
  signOutGoogle() async {
    await GoogleSignIn().signOut();
  }

  // Email and password SignUp
  Future createUserWithEmailAndPassword({required String email,required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  String get userId {
    return FirebaseAuth.instance.currentUser?.uid ?? '';
  }
}
