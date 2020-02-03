import 'package:crowdFunding/core/services/authentication.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class LoginModel extends ChangeNotifier {
  final AuthenticationService _authenticationService = locator<AuthenticationService>();


/*  Future<bool> login(String userIdText) async {
    var userId = int.tryParse(userIdText);
    var success =  await _authenticationService.login(userId);

    return success;
  }*/
}