import 'package:e_commerce_client/data/auth_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Sign up'.tr(),style: const TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.black),),
        toolbarHeight: 140.h,
        elevation: 0,
      ),
      body: Consumer<AuthProvider>(
        builder: (context,provider,x){
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            alignment: Alignment.center,
            child: Form(
              key: provider.signupKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 343.w,
                    height: 64.h,
                    margin: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      validator: provider.nameValidator,
                      controller: provider.nameController,
                      decoration: InputDecoration(
                        label: Text('Your Name'.tr(),style: TextStyle(color: Colors.grey.shade400),),
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
                      validator: provider.emailValidator,
                      controller: provider.emailController,
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
                  Container(
                    width: 343.w,
                    height: 64.h,
                    margin: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      validator: provider.passwordValidator,
                      controller: provider.passwordController,
                      decoration: InputDecoration(
                        label: Text('Password'.tr(),style: TextStyle(color: Colors.grey.shade400),),
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) { return LoginScreen(); }));
                    },
                    highlightColor: Colors.white,
                    splashColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Already have an account?'.tr()),
                        const Icon(Icons.arrow_right_alt_rounded,color: Colors.deepOrange,)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      provider.signIn();
                    },
                    highlightColor: Colors.white,
                    splashColor: Colors.white,
                    child: Container(
                      width: 343.w,
                      height: 48.h,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text('SIGN UP'.tr(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white,),textAlign: TextAlign.center,),
                    ),
                  ),
                  SizedBox(
                    height: 260.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Or Sign Up with Social Account'.tr()),
                        Container(
                          width: 200.w,
                          margin: const EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap:(){

                                },
                                highlightColor: Colors.white,
                                splashColor: Colors.white,
                                child: Image.asset('assets/icons/google.png',width: 40.w,height: 40.h,)
                              ),
                              InkWell(
                                onTap: (){

                                },
                                highlightColor: Colors.white,
                                splashColor: Colors.white,
                                child: Image.asset('assets/icons/facebook.png',width: 40.w,height: 40.h,)
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
