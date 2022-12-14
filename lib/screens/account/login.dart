import 'package:e_commerce_client/data/auth_provider.dart';
import 'package:e_commerce_client/screens/account/signup.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                  return SignupScreen();
                }));
              },
              icon: Icon(Icons.arrow_back_ios_rounded,size: 25,),
            ),
            Text(''),
            Text('Log in'.tr(),style: const TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.black),),
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
              child: Form(
                key: provider.loginKey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 343.w,
                      height: 64.h,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        validator: provider.emailValidator,
                        controller: provider.emailLogController,
                        decoration: InputDecoration(
                          label: Text('E-Mail'.tr(), style: TextStyle(
                              color: Colors.grey.shade400),),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        cursorColor: Colors.black,
                        cursorHeight: 25.h,
                      ),
                    ),
                    Container(
                      width: 343.w,
                      height: 64.h,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFormField(
                        validator: provider.passwordValidator,
                        controller: provider.passwordLogController,
                        decoration: InputDecoration(
                          label: Text('Password'.tr(), style: TextStyle(
                              color: Colors.grey.shade400),),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.black,
                        cursorHeight: 25.h,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            BuildContext context) {
                          return ForgotPassword();
                        }));
                      },
                      highlightColor: Colors.white,
                      splashColor: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forgot your Password?'.tr()),
                          const Icon(Icons.arrow_right_alt_rounded,
                            color: Colors.deepOrange,)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        provider.logIn();
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
                        child: Text('LOGIN'.tr(),
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .w400, color: Colors.white,),
                          textAlign: TextAlign.center,),
                      ),
                    ),
                    Container(
                      height: 324.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Or Sign Sp with Social Account'.tr()),
                          Container(
                            width: 200.w,
                            margin: EdgeInsets.only(top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {

                                    },
                                    highlightColor: Colors.white,
                                    splashColor: Colors.white,
                                    child: Image.asset(
                                      'assets/icons/google.png', width: 40.w,
                                      height: 40.h,)
                                ),
                                InkWell(
                                    onTap: () {

                                    },
                                    highlightColor: Colors.white,
                                    splashColor: Colors.white,
                                    child: Image.asset(
                                      'assets/icons/facebook.png', width: 40.w,
                                      height: 40.h,)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),

    );
  }
}
