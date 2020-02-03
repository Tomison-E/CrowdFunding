import 'dart:collection';
import 'package:crowdFunding/locator.dart';
import 'package:crowdFunding/DB/database.dart';
import 'package:crowdFunding/core/model/Beneficiary.dart';
import 'package:crowdFunding/core/services/api.dart';
import 'package:flutter/material.dart';

class BeneficiaryVM extends ChangeNotifier{

  ApiService _api = locator<ApiService>();

  Beneficiary _beneficiary;
  final List<Beneficiary> _beneficiaries= [];

  UnmodifiableListView<Beneficiary> get allBeneficiaries => UnmodifiableListView(Database.beneficiary);
  Beneficiary get oneBeneficiary => _beneficiary;
  Beneficiary  idBeneficiary({String id}) => Database.beneficiary.firstWhere((E)=> E.id==id,orElse: ()=> null);

  bool  userBeneficiary({String phoneNumber}) {
    _beneficiary = Database.beneficiary.firstWhere((E)=> E.phoneNumber==phoneNumber,orElse: ()=> null);
    if (_beneficiary != null) return true;
     return false;
  }

}