import 'package:crowdFunding/utils/sizeConfig.dart';
import 'package:crowdFunding/utils/locale.dart';
import 'package:crowdFunding/utils/uiData.dart';
import 'package:flutter/material.dart';


class TC extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: SingleChildScrollView(
        child: Container(
         height:SizeConfig.blockSizeVertical*75,
          margin: EdgeInsets.only(left: 30.0,right: 30.0),
          child: Column(
            children: <Widget>[
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
              Spacer(),
              Container(
                child: Column(
                  children: <Widget>[
                    Text("Terms and Conditions",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600)),
                    Text("\nThe most effective way to create terms & conditions customized specifically for your site. Drafted and backed by attorneys with 50,000+ clients around the world.\n\n"
                        "Create yours today & invite your friends\n\nUnbeatable Value. Fully Customizable. Download Instantly. No Recurring Payments",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.normal),)
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        child: RaisedButton(
                            onPressed:(){
                              Navigator.pushNamed(context, UIData.dashboardRoute);
                            },
                            color: Colors.blue,
                            child: Text(
                              Locale.iAccept,
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
                            color: Colors.white,
                            child: Text(
                              Locale.iDoNotAccept,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600),
                            ),shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey))),
                        width: double.infinity)
                  ],
                ),
              )

            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    ),
  );
  }



}