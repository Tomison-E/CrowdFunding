import 'dart:collection';

import 'package:crowdFunding/DB/database.dart';
import 'package:crowdFunding/core/model/BeneficiarySourceType.dart';
import 'package:flutter/material.dart';

class BeneficiarySourceTypeVM extends ChangeNotifier{
  BeneficiarySourceType _beneficiarySourceType;
  final List<BeneficiarySourceType> _beneficiarySourceTypes= [];

  UnmodifiableListView<BeneficiarySourceType> get allBeneficiaries => UnmodifiableListView(Database.beneficiaryType);
  BeneficiarySourceType  oneBeneficiary({String id}) => Database.beneficiaryType.firstWhere((E)=> E.id==id,orElse: ()=> null);

}