import 'dart:async';


import 'package:crowdFunding/core/services/api.dart';
import 'package:crowdFunding/locator.dart';

class AuthenticationService {
  // Inject our Api
  ApiService _api = locator<ApiService>();

  /*Future<bool> login(int userId) async {
    // Get the user profile for id
    var fetcheduser = await _api.getUserProfile(userId);

    // Check if success
    var hasUser = fetcheduser != null;

    return hasUser;
  }*/
}