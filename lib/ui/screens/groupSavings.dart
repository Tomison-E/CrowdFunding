
import 'package:crowdFunding/utils/sizeConfig.dart';
import 'package:crowdFunding/utils/locale.dart';
import 'package:flutter/material.dart';


class GroupSavings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.blockSizeVertical*100,
          child: Column(
            children: <Widget>[
              Spacer(),
             Align(child: RichText(text: TextSpan(text: "Group Savings\n\n",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.black),children: [
                TextSpan(text: "Start the fun! Create or Join a Group or Create a Hangout with Friends\n\n",style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.normal)),
                 ])),alignment: Alignment.centerLeft),
              Spacer(),
              Icon(Icons.person_add,size: 50.0),
              SizedBox(height: 20.0),
              Text("You do not belong to any group yet",style: TextStyle(color: Colors.black,fontSize: 16.0)),
              Spacer(flex: 2),
              SizedBox(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                        child: RaisedButton(
                            onPressed:(){},
                            color: Colors.blue,
                            child: Text(
                              Locale.createGroup,
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
                              Locale.joinGroup,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600),
                            ),shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey))),
                        width: double.infinity)
                  ],
                ),
              ),
              Spacer(flex: 1)
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),padding: EdgeInsets.only(left: 30.0,right: 30.0),
      ),
    );
  }


}