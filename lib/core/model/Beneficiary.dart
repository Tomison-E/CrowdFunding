

import 'package:flutter/material.dart';

class Beneficiary {
  final String id;
  final String createdAt;
  String updatedAt;
  bool isDeleted;
  final String userId;
  String firstName;
  String lastName;
  String phoneNumber;


  Beneficiary({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.isDeleted,
    this.userId,
    @required this.firstName,
    @required this.lastName,
    @required this.phoneNumber
}):assert(firstName.isEmpty == false && firstName.length>=1 && firstName.length<=100),
        assert(lastName.isEmpty == false && lastName.length>=1 && lastName.length<=100),
        assert(phoneNumber.isEmpty == false && phoneNumber.length>=1 && phoneNumber.length<=100);

  Beneficiary.fromMap(Map<String, dynamic> map)
      : id = map["Id"],
        createdAt = map["CreatedAt"],
        isDeleted = map["IsDeleted"],
        userId = map["UserId"],
        firstName = map["FirstName"],
        lastName = map["LastName"],
        phoneNumber = map["PhoneNumber"],
        updatedAt = map["UpdatedAt"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["Id"] = id;
    data["CreatedAt"] = createdAt;
    data["UpdatedAt"] = updatedAt;
    data["IsDeleted"] = isDeleted;
    data["userId"] = userId;
    data["FirstName"] = firstName;
    data["LastName"] = lastName;
    data["PhoneNumber"] = phoneNumber;
    return data;
  }

}