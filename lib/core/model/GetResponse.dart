import 'package:crowdFunding/core/model/BeneficiarySourceType.dart';
import 'package:flutter/material.dart';

class GetResponse{
  String requestId;
  String message;
  String responseCode;
  List<BeneficiarySourceType> data;

  GetResponse({
    this.requestId='aba4f290-f978-4de0-80a2-efa00e4aceaf',
    this.message='success',
    this.responseCode = '00',
    @required this.data
}):assert(message.length>0 && responseCode.length>0);

  GetResponse.fromMap(Map<String, dynamic> map)
      : requestId = map["Requestid"],
        message  = map["Message"],
        responseCode = map["Responsecode"],
        data = map["BeneficiarySourceTypes"];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["Requestid"] = requestId;
    data["Message"] = message;
    data["Responsecode"] = responseCode;
    data["BeneficiarySourceTypes"] = data;
    return data;
  }
}