import 'package:cloud_firestore/cloud_firestore.dart';

class UserData{
  final String email;
  final String uid;
  final String username;
  final String bio;

  const UserData({
    required this.email,
    required this.uid,
    required this.username,
    required this.bio,
  });

  Map<String, dynamic> toJson() => {
    "username": username,
    "uid": uid,
    "email": email,
    "bio": bio,
  };


  static UserData fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserData(
      email: snapshot['email'],
      uid: snapshot['uid'],
      username: snapshot['username'],
      bio: snapshot['bio'],
    );
  }


}