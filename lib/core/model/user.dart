import 'package:flutter/cupertino.dart';

class User{
  final String phoneNumber;

  User({@required this.phoneNumber}):assert(phoneNumber.isEmpty == false);
}