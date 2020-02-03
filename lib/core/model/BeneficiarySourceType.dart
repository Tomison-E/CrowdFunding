import 'package:flutter/material.dart';

class BeneficiarySourceType {
   final String id;
   String name;

  BeneficiarySourceType({this.id, @required this.name})
      : assert(name != null),
        assert(name.length >= 1 && name.length <= 100);

  BeneficiarySourceType.fromMap(Map<String, dynamic> map)
      : id = map["Id"],
        name = map["Name"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["Id"] = id;
    data["Name"] = name;
    return data;
  }
}
