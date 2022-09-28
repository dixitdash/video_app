import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  static final UserRepository instance = UserRepository._i();

  factory UserRepository() {
    return instance;
  }

  UserRepository._i();

  Future<void> addUser() async {
    CollectionReference userRef = FirebaseFirestore.instance.collection('users');
    FirebaseAuth auth = FirebaseAuth.instance;
    User user = auth.currentUser!;
    final email = user.email;
    final name = user.displayName;
    final id = user.uid;
    String uid = auth.currentUser!.uid.toString().trim();
    userRef.doc(uid).set({
      'name': name,
      'email': email,
      'id': id,
    });
    return;
  }
}
