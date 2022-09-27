import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';


class UserRepository{
  UserRepository._();

  static final instance = UserRepository._();

  static Future setUser(UserModel userModel) async {
    await FirebaseFirestore.instance.collection('user').doc(userModel.id).set(
      userModel.toJson(),
    );
  }

}