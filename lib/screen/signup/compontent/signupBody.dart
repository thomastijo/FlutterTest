


import 'package:dave_new/utils/appString.dart';
import 'package:dave_new/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignDetailsBody extends StatefulWidget {
  @override
  SignDetailsBodyState createState() => SignDetailsBodyState();

}

class SignDetailsBodyState extends State<SignDetailsBody> {

  final _textName = TextEditingController();
  final _textLastName = TextEditingController();
  final _textEmail = TextEditingController();
  final _textPhone= TextEditingController();
  final _textRfCode= TextEditingController();


  bool isValidateName=false;
  bool isValidateLastName=false;
  bool isValidatePhone=false;
  bool isValidateEmail=false;
  bool isValidateAll=false;

  FocusNode ?focusNodeLastName;
  FocusNode ?focusNodeName;
  FocusNode ?focusNodeEmail;
  FocusNode ?focusNodePhone;
  FocusNode ?focusNodeRFcode;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        topView(),
                        profileInfo(),
                        bottomView()
                      ])
              ),
    );


  }

  /**
   * profileInfo  edittext and Validation
   */

 Widget profileInfo(){
   return Container(padding: const EdgeInsets.only(left: 36.0,right: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          isValidateAll? Row(children: [

            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/images/error.png',
              ),),
            SizedBox(width: 8,),
            Text(
                VAlID_ALL_ERROR,
                style: AppTheme.heading13.copyWith( color: AppTheme.red)),


          ],):
          SizedBox(width: 1,),

          SizedBox(height: 15,),
          Row(children: [
            Text(
                FIRST_NAME,
                style: AppTheme.heading13.copyWith(color: isValidateName?  AppTheme.red:AppTheme.black)),
            Spacer(),
            isValidateName?  SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/images/error.png',
              ),):SizedBox(height: 2,),

          ]),
          SizedBox(height: 5,),
          Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  width: 1,
                  color: Colors.black26,
                ),
              ),
              child:Center(child:
              TextField(
                textAlign: TextAlign.left,
                controller:  _textName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  // hintText: 'Comments',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 focusNode: focusNodeName,
                                onSubmitted: (v){
                                  FocusScope.of(context).requestFocus(focusNodeLastName);
                                },
                textInputAction: TextInputAction.next,

              ))),
          isValidateName?Text(
              "Please enter Name",
              style: AppTheme.heading13.copyWith( color: AppTheme.red)):SizedBox(width: 1,),

          SizedBox(height: 25,),
          Row(children: [
            Text(
                LAST_NAME,
                style: AppTheme.heading13.copyWith(color: isValidateLastName?  AppTheme.red:AppTheme.black)),
            Spacer(),
            isValidateLastName?  SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/images/error.png',
              ),):SizedBox(height: 2,),

          ]),
          SizedBox(height: 5,),
          Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  width: 1,
                  color: Colors.black26,
                ),
              ),
              child:Center(child:
              TextField(
                textAlign: TextAlign.left,
                controller:  _textLastName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  // hintText: 'Comments',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusNode: focusNodeLastName,
                                onSubmitted: (v){
                                  FocusScope.of(context).requestFocus(focusNodeEmail);
                                },
                textInputAction: TextInputAction.next,
              ))),
          isValidateLastName?Text(
              "Please enter Last Name",
              style: AppTheme.heading13.copyWith( color: AppTheme.red)):SizedBox(width: 1,),
          SizedBox(height: 25,),

          Row(children: [
            Text(
                EMAIL,
                style: AppTheme.heading13.copyWith(color: isValidateEmail?  AppTheme.red:AppTheme.black)),
            Spacer(),
            isValidateEmail?  SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/images/error.png',
              ),):SizedBox(height: 2,),

          ]),
          SizedBox(height: 5,),
          Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  width: 1,
                  color: Colors.black26,
                ),
              ),
              child:Center(child:
              TextField(
                textAlign: TextAlign.left,
                controller:  _textEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  // hintText: 'Comments',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusNode: focusNodeEmail,
                                onSubmitted: (v){
                                  FocusScope.of(context).requestFocus(focusNodePhone);
                                },
                textInputAction: TextInputAction.next,
              ))),
          isValidateEmail?Text(
              "Please enter valid email",
              style: AppTheme.heading13.copyWith( color: AppTheme.red)):SizedBox(width: 1,),
          SizedBox(height: 25,),
          Row(children: [
            Text(
                PHONE_NUMBER,
                style: AppTheme.heading13.copyWith(color: isValidatePhone?  AppTheme.red:AppTheme.black)),
            Spacer(),
            isValidatePhone?  SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/images/error.png',
              ),):SizedBox(height: 2,),

          ]),
          SizedBox(height: 5,),
          Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  width: 1,
                  color: Colors.black26,
                ),
              ),
              child:Center(child:
              TextField(
                textAlign: TextAlign.left,
                controller:  _textPhone,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  // hintText: 'Comments',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusNode: focusNodePhone,
                                onSubmitted: (v){
                                  FocusScope.of(context).requestFocus(focusNodeRFcode);
                                },
                textInputAction: TextInputAction.next,
              ))),
          isValidatePhone?Text(
              "Please enter valid Mobile",
              style: AppTheme.heading13.copyWith( color: AppTheme.red)):SizedBox(width: 1,),

          SizedBox(height: 25,),

          Row(children: [
            Text(
                REFERAL_CODE,
                style: AppTheme.heading13.copyWith(color:AppTheme.black)),
            Spacer(),
            Text(
                OPTINAL,
                style: AppTheme.heading13.copyWith( color: AppTheme.blue))
          ]),
          SizedBox(height: 5,),
          Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  width: 1,
                  color: Colors.black26,
                ),
              ),
              child:Center(child:
              TextField(
                textAlign: TextAlign.left,
                controller:  _textRfCode,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  // hintText: 'Comments',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusNode: focusNodeRFcode,
                textInputAction: TextInputAction.done,
              ))),


          SizedBox(height: 25,),




        ],
      ),
    );
  }

  /**
   * TOP VIEW
   * Back,Cancel
   */

Widget topView(){
 return Container(
    padding: const EdgeInsets.only(left: 12.0,right: 12),
    height: 120,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: AppTheme.blue,
    ),
    child:Column(children: [
      SizedBox(height: 25,),
      Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  'assets/images/delivery.png',
                ),),
            ),

            Center(child:  Text(
              REGISTER_FOR_LOft,
              style: AppTheme.heading13,
            ),),


            Align(
              alignment: Alignment.centerRight,
              child: Text(
                CANCEL,
                style: AppTheme.heading13,),
            ),

          ]),
      SizedBox(height: 20,),
      Text(
        PERSONAL_INFO,
        style: AppTheme.heading13,
      ),
    ],),);
}

/**
 * Bottom View
 * Next Button ,terms and condtion
 *
 * */

Widget bottomView(){
  return Container(
    padding: const EdgeInsets.only(top: 36.0,bottom: 36,left: 36),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12,
              offset: Offset(4, 0),
              blurRadius: 5,
              spreadRadius: 2),
        ]),

    child:
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
                BYINFO,
                style: AppTheme.heading13.copyWith(color:  AppTheme.black)),
            Text(
                TERMS,
                style: AppTheme.heading13.copyWith(color:  AppTheme.blue)),
          ],
        ),
      SizedBox(width: 20,),
      GestureDetector(
        onTap: () async {
          FocusScope.of(context).unfocus();
          checkValidate();
        },
        child: Container(
            height: 48,
            width:90,

            decoration: BoxDecoration(
                color: AppTheme.vil,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppTheme.white,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2),
                ]),
            child: Center(
                child: Text(
                  NEXT,
                  style: AppTheme.headingStyle.copyWith(fontSize:16,color: AppTheme.white,fontWeight: FontWeight.normal),
                ))),
      ),
    ],),

  );
}



checkValidate(){
  if(_textName.text.trim().isEmpty){
    setState(() {
      isValidateName=true;
    });
  }else{
    setState(() {
      isValidateName=false;
    });
  }

  if(_textLastName.text.trim().isEmpty){
    setState(() {
      isValidateLastName=true;
    });
  }else{
    setState(() {
      isValidateLastName=false;
    });
  }


  if(_textEmail.text.trim().isEmpty || !validateEmail(_textEmail.text.trim())){
    setState(() {
      isValidateEmail=true;
    });
  }else{
    setState(() {
      isValidateEmail=false;
    });
  }

  if(_textPhone.text.trim().isEmpty){
    setState(() {
      isValidatePhone=true;
    });
  }else{
    setState(() {
      isValidatePhone=false;
    });
  }
  if(isValidateName||isValidateLastName||isValidateEmail||isValidatePhone){
    setState(() {
      isValidateAll=true;
    });
  }else{
    setState(() {
      isValidateAll=false;
    });
  }
}

  bool validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

}