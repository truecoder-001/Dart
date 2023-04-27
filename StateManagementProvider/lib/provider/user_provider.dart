

import 'package:flutter/widgets.dart';
import 'package:tutorial_april/models/userdata.dart';
import 'package:tutorial_april/resources/auth_methods.dart';

class UserProvider  with ChangeNotifier {
  UserData? _user;
  final AuthMethods _authMethods = AuthMethods();

  UserData? get getUser => _user;
  Future<void> refreshUser() async {
    UserData user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }

}