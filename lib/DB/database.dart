import 'package:crowdFunding/core/model/Beneficiary.dart';
import 'package:crowdFunding/core/model/BeneficiarySourceType.dart';
import 'package:crowdFunding/core/model/user.dart';

class Database{

static List<Beneficiary>  beneficiary = [
  Beneficiary(id: "AAA",createdAt: "02/10/2020",updatedAt: "02/20/2020",isDeleted: false,userId: "Esan01",firstName: "Oluwatomisin",lastName: "Emmanuel",phoneNumber: "08166569680"),
  Beneficiary(id: "AAB",createdAt: "02/10/2020",updatedAt: "02/20/2020",isDeleted: false,userId: "Esan02",firstName: "lanre",lastName: "Esan",phoneNumber: "08033157531"),
  Beneficiary(id: "AAC",createdAt: "02/10/2020",updatedAt: "02/20/2020",isDeleted: false,userId: "Goke01",firstName: "Goke",lastName: "Adepoju",phoneNumber: "08022221569"),
  Beneficiary(id: "AAC",createdAt: "02/10/2020",updatedAt: "02/20/2020",isDeleted: false,userId: "Goke01",firstName: "Dayo",lastName: "Okesola",phoneNumber: "08039590420"),
];


static List<BeneficiarySourceType> beneficiaryType = [
  BeneficiarySourceType(name: "Esusu",id: "AAAAAA"),
  BeneficiarySourceType(name: "Personal Saving",id: "AAAAAB"),
  BeneficiarySourceType(name: "Group Saving",id: "AAAAAC"),
];

static List<User> users = [
  User(phoneNumber: "+2348166569680"),
  User(phoneNumber: "+2348033157531"),
];

}