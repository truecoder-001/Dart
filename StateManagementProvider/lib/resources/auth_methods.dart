import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tutorial_april/models/userdata.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<String> registerUser({
    required String email,
    required String password,
    required String username,
    required String bio,
  }) async {
    String resp = "Some Error occurred";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        UserData userData = UserData(
          email: email,
          uid: cred.user!.uid,
          username: username,
          bio: bio,
        );

        await _fireStore.collection('users').doc(cred.user!.uid).set(
              userData.toJson(),
            );
        resp = 'success';
      }
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        res = "success";
      } else {
        res = "Please Enter All The Fields";
      }
    } catch (err) {
      res = err.toString();
    }

    return res;
  }


  Future<UserData> getUserDetails() async{
    User currentUser  = _auth.currentUser!;
    DocumentSnapshot snap = await _fireStore.collection('users').doc(currentUser.uid).get();
    return UserData.fromSnap(snap);
  }



}
