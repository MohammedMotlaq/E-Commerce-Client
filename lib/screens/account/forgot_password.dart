import 'package:e_commerce_client/data/auth_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_rounded,size: 25,),
            ),
            Text(''),
            Text('Forgot Password'.tr(),style: const TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.black),),
          ],
        ),
        toolbarHeight: 140.h,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: Consumer<AuthProvider>(
        builder: (context,provider,x) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 343.w,
                  height: 40.h,
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Please, enter your email address. You will receive a link to create a new password via email.'.tr(),
                    style: TextStyle(),
                  ),
                ),
                Container(
                  width: 343.w,
                  height: 64.h,
                  margin: const EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('E-Mail'.tr(),style: TextStyle(color: Colors.grey.shade400),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    cursorColor: Colors.black,
                    cursorHeight: 25.h,
                  ),
                ),
                InkWell(
                  onTap: (){
                    provider.forgetPassword();
                  },
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  child: Container(
                    width: 343.w,
                    height: 48.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text('SEND'.tr(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white,),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
          ),
        );
        }
      ),

    );
  }
}
