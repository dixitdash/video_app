import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:video_call_app/infrastructure/repository/user_repository.dart';

class AuthRepository {
  AuthRepository._();

  static final instance = AuthRepository._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  final userRepository = UserRepository.instance;

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

  String get userId {
    return FirebaseAuth.instance.currentUser?.uid ?? '';
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}
