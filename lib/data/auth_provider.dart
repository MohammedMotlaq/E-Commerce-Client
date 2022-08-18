import 'dart:developer';
import 'package:e_commerce_client/data/auth_helper.dart';
import 'package:e_commerce_client/data/firestore_helper.dart';
import 'package:e_commerce_client/router/router.dart';
import 'package:e_commerce_client/screens/home/home_screen.dart';
import 'package:e_commerce_client/widgets/custom_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';
import '../models/user.dart';

class AuthProvider extends ChangeNotifier{
  GlobalKey<FormState> signupKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey();
  GlobalKey<FormState> adminLoginKey = GlobalKey();
  TextEditingController emailLogController = TextEditingController();
  TextEditingController passwordLogController = TextEditingController();

  nullValidation (String? v){
    if(v == null || v.isEmpty){
      return 'Required *';
    }
  }
  String? nameValidator(String? value){
    if(value!.isEmpty){
      return 'Required *';
    }else if(value.length < 3){
      CustomDialog.showDialogFunction('Your Name must be more than 3 letters!');
    }
  }
  String? emailValidator(String? value){
    if(value!.isEmpty){
      return 'Required *';
    }else if(!isEmail(value)){
      CustomDialog.showDialogFunction('Wrong Email Format');
    }
  }
  String? passwordValidator(String? value){
    if(value!.isEmpty){
      return 'Required *';
    }
    else if(value.length<6){
      CustomDialog.showDialogFunction('Weak Password');
    }
  }

  signIn() async{
    if(signupKey.currentState!.validate()){
      UserCredential? credentials = await AuthHelper.authHelper.signIn( emailController.text, passwordController.text);

      if(credentials != null ){
        AppUser appUser = AppUser(
            email: emailController.text,
            userName: nameController.text,
            //id:credentials!.user!.uid
        );
        FireStoreHelper.fireStoreHelper.addUserToFireStore(appUser);
        AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
        nameController.text = '';
        emailController.text = '';
        passwordController.text = '';
      }else{
        log('can not sign up');
      }

    }
  }

  logIn() async{
    if(loginKey.currentState!.validate()){
      UserCredential? credentials = await AuthHelper.authHelper.logIn( emailLogController.text, passwordLogController.text);
      if(credentials != null ){
        AppRouter.NavigateWithReplacemtnToWidget(HomeScreen());
        emailLogController.text = '';
        passwordLogController.text = '';
      }else{
        log('can not log in');
      }

    }
  }

  checkUser(){
    AuthHelper.authHelper.checkUser();
  }

  signOut(){
    AuthHelper.authHelper.signOut();
  }

  forgetPassword(){
    AuthHelper.authHelper.forgetPassword('mohammedmotlaq32@gmail.com');
  }

}