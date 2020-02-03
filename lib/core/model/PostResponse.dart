import 'package:crowdFunding/core/model/BeneficiarySourceType.dart';
import 'package:flutter/material.dart';

class PostResponse{
  String requestId;
  String message;
  String responseCode;
  BeneficiarySourceType data;

  PostResponse({
    this.requestId='e2400d51-5897-4f74-921e-30a4f1e30f67',
    this.message='Beneficiary source type created successfully',
    this.responseCode = '00',
    @required this.data
  }):assert(message.length>0 && responseCode.length>0);

  PostResponse.fromMap(Map<String, dynamic> map)
      : requestId = map["Requestid"],
        message  = map["Message"],
        responseCode = map["Responsecode"],
        data = map["BeneficiarySourceType"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["Requestid"] = requestId;
    data["Message"] = message;
    data["Responsecode"] = responseCode;
    data["BeneficiarySourceType"] = data;
    return data;
  }
}