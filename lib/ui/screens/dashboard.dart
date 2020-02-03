
import 'package:crowdFunding/utils/sizeConfig.dart';
import 'package:crowdFunding/utils/locale.dart';
import 'package:crowdFunding/utils/uiData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:crowdFunding/core/viewModel/BeneficiaryVM.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<BeneficiaryVM>(context, listen: false).oneBeneficiary;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.blockSizeVertical*100,
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              Text("Good Afternoon,\n${user.firstName}!",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.normal)),
              Spacer(),
              SizedBox(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(hintText: "what's on going",
                        border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
              )),
                    ),
                    SizedBox(height: 10.0),
                    RichText(text: TextSpan(text: "Innovation Group\n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.black),children: [
                      TextSpan(text: "GROUP SAVINGS  |  MEMBER",style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.normal))
                    ])),
                    SizedBox(height: 20.0),
                    RichText(text: TextSpan(text: "My Baby's Savings\n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.black),children: [
                      TextSpan(text: "PERSONAL SAVINGS  |  ADMINISTRATOR",style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.normal))
                    ])),
                    SizedBox(height: 20.0),
                    RichText(text: TextSpan(text: "TGIF with the Crew\n",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.black),children: [
                      TextSpan(text: "FRIENDS HANGOUT  |  ADMINISTRATOR",style: TextStyle(color: Colors.grey,fontSize: 12.0,fontWeight: FontWeight.normal))
                    ])),
                  ],crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(hintText: "Acion is required",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 3.0),
                  ),),
              ),
              SizedBox(height: 5.0),
              Row(children: <Widget>[
                Icon(Icons.error),
                SizedBox(width: 3.0),
                Text("Due Payment For Innovation Group",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold))
              ],mainAxisAlignment: MainAxisAlignment.start),
              Spacer(flex: 2),
              SizedBox(
                  child: RaisedButton(
                      onPressed:(){
                        _modalBottomSheetMenu(context);
                      },
                      color: Colors.blue,
                      child: Text(
                        Locale.tapToStart,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600),
                      )),
                  width: double.infinity),
              Spacer(flex: 1)
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),padding: EdgeInsets.only(left: 30.0,right: 30.0),
      ),
    );
  }

  void _modalBottomSheetMenu(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            height: 300.0, // fixed size
            color: Colors.white, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: new Center(
                  child: Column(
                    children:[
                      GestureDetector(child:Row(
                        children: <Widget>[
                          Icon(Icons.add_circle,color: Colors.black),
                          SizedBox(width: 10.0),
                          Text("Start Group Savings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0))
                        ],
                      ),onTap: ()=>Navigator.pushNamed(context, UIData.groupSavingsRoute)),
                      Row(
                        children: <Widget>[
                          Icon(Icons.add_circle,color: Colors.black),
                          SizedBox(width: 10.0),
                          Text("Start Personal Savings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.add_circle,color: Colors.black),
                          SizedBox(width: 10.0),
                          Text("Start Friends Hangout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.add_circle,color: Colors.black),
                          SizedBox(width: 10.0),
                          Text("Pay Bills with Friends",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.add_circle,color: Colors.black),
                          SizedBox(width: 10.0),
                          Text("Join an Existing Group",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0))
                        ],
                      ),
                      ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),padding: EdgeInsets.only(top:15.0,right: 15.0,left: 50.0,bottom: 15.0));
        }
    );
  }

}