import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static Future<dynamic> get(url, {token}) async {
    debugPrint("CALLED GET $url");
    var body;
    var status = -1;
    try{
      http.Response response;
      if (token != null){
        response = await http.get(url, headers:{"Authorization": "Bearer $token"});
      }else{
        response = await http.get(url);
      }
      if ((response.statusCode >= 200 && response.statusCode < 300) || response.statusCode == 400 || response.statusCode == 401){
        body = json.decode(response.body);
        status = response.statusCode;
      }
    }catch(e){
//      throw e;
      debugPrint(e.toString());
    }
    debugPrint("STATUS: $status");
    debugPrint("RESPONSE: $body");
    return {"data": body, "status": status};
  }

  static Future<dynamic> post(url, data, {token}) async {
    debugPrint("CALLED POST $url, token: $token");
    var body;
    var status = -1;
    try{
      debugPrint(data.toString());
      var response;
      if (token != null){
        response = await http.post(url, body: jsonEncode(data), headers:{"Authorization": "Bearer $token", "Content-Type": "application/json"});
      }else{
        response = await http.post(url, body: jsonEncode(data), headers:{"Content-Type": "application/json"});
      }
      debugPrint("CODE: ${response.statusCode}");
      debugPrint("RESPONSE: ${response.body}");
      if ((response.statusCode >= 200 && response.statusCode < 300) || response.statusCode == 400 || response.statusCode == 401){
        body = json.decode(response.body);
        status = response.statusCode;
      }
    }catch(e){
//      throw e;
      debugPrint("EXCEPTION: ${e.toString()}");
      debugPrint(e.toString());
    }
    debugPrint("STATUS: $status");
    debugPrint("RESPONSE: $body");
    return {"data": body, "status": status};
  }

  static Future<dynamic> put(url, data, {token}) async {
    print("CALLED PUT $url");
    var body;
    var status = -1;
    try{
      print(data.toString());
      var response;
      if (token != null){
        response = await http.put(url, body: jsonEncode(data), headers:{"Authorization": "Bearer $token", "Content-Type": "application/json"});
      }else{
        response = await http.put(url, body: jsonEncode(data), headers:{"Content-Type": "application/json"});
      }
      if ((response.statusCode >= 200 && response.statusCode < 300) || response.statusCode == 400 || response.statusCode == 401){
        body = json.decode(response.body);
        status = response.statusCode;
      }
    }catch(e){
//      throw e;
      debugPrint(e.toString());
    }
    debugPrint("STATUS: $status");
    debugPrint("RESPONSE: $body");
    return {"data": body, "status": status};
  }
  static Future<dynamic> delete(url, {token}) async {
    debugPrint("CALLED DELETE $url");
    var body;
    var status = -1;
    try{
      var response;
      if (token != null){
        response = await http.delete(url, headers:{"Authorization": "Bearer $token", "Content-Type": "application/json"});
      }else{
        response = await http.delete(url, headers:{"Content-Type": "application/json"});
      }
      if ((response.statusCode >= 200 && response.statusCode < 300) || response.statusCode == 400 || response.statusCode == 401){
        body = json.decode(response.body);
        status = response.statusCode;
      }
    }catch(e){
//      throw e;
      debugPrint(e.toString());
    }
    debugPrint("STATUS: $status");
    debugPrint("RESPONSE: $body");
    return {"data": body, "status": status};
  }
}
