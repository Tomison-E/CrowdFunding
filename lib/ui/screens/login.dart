import 'package:crowdFunding/core/viewModel/BeneficiaryVM.dart';
import 'package:crowdFunding/utils/sizeConfig.dart';
import 'package:crowdFunding/utils/locale.dart';
import 'package:crowdFunding/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  final TextEditingController _txt = TextEditingController();
  static final  _scaffoldKeys =  GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    _scaffoldKeys.currentState.showSnackBar(new SnackBar(
        content: new Text(value),duration: Duration(seconds: 10),
    ));
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key:_scaffoldKeys,
      body: Center(child:SingleChildScrollView(child:Container(
        child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.account_balance),
                    Text(
                      "CrowdFundr",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(Locale.mobileNumber,
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left),
                  TextField(
                      decoration: InputDecoration(
                    hintText: Locale.enterYourMobileNumber,
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 3.0),
                    ),
                  ),keyboardType: TextInputType.phone,controller: _txt,textInputAction: TextInputAction.done,maxLength: 11),
                  SizedBox(height: 30.0),
                  SizedBox(
                      child: RaisedButton(
                          onPressed:(){
                            signIn(_txt.text, context);
                          },
                          color: Colors.blue,
                          child: Text(
                            Locale.signInToCrowdFund,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          )),
                      width: double.infinity),
                  SizedBox(height: 10.0),
                  SizedBox(
                      child: RaisedButton(
                          onPressed: (){},
                          color: Colors.pink,
                          child: Text(
                            Locale.createAnAccount,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          )),
                      width: double.infinity)
                ],
              ))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween),
        alignment: Alignment.center,
        height: SizeConfig.blockSizeVertical*60,margin: EdgeInsets.only(top: 50.0,right: 30.0,left: 30.0),
      ))),
      backgroundColor: Colors.white,
    );
  }

  void signIn(String phoneNumber, BuildContext context){
    FocusScopeNode currentFocus = FocusScope.of(context);
    bool login = Provider.of<BeneficiaryVM>(context, listen: false).userBeneficiary(phoneNumber: phoneNumber);
    if(login)Navigator.pushNamed(context, UIData.tcRoute);
    else {
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
      showInSnackBar("Mobile Number is not recognized");
    }
  }
}

/*
Container(
        child: SingleChildScrollView(child: SizedBox(height:300,child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.account_balance),
                    Text(
                      "CrowdFundr",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Mobile Number",
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.left),
                  TextField(
                      decoration: InputDecoration(
                    hintText: "Enter your mobile number",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink, width: 3.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 3.0),
                    ),
                  )),
                  SizedBox(height: 30.0),
                  SizedBox(
                      child: RaisedButton(
                          onPressed:(){},
                          color: Colors.blue,
                          child: Text(
                            "Sign in to CrowdFundr",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          )),
                      width: double.infinity),
                  SizedBox(height: 10.0),
                  SizedBox(
                      child: RaisedButton(
                          onPressed: (){},
                          color: Colors.pink,
                          child: Text(
                            "Create an Account",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600),
                          )),
                      width: double.infinity)
                ],
              ))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween)),padding: null),
        alignment: Alignment.center,
        padding:
            EdgeInsets.only(top: 150.0, right: 30.0, left: 30.0, bottom: 100.0),
      ),
 */

