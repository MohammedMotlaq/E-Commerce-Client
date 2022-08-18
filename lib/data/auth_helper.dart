import 'dart:developer';
import 'package:e_commerce_client/router/router.dart';
import 'package:e_commerce_client/screens/account/signup.dart';
import 'package:e_commerce_client/screens/home/home_screen.dart';
import 'package:e_commerce_client/widgets/custom_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthHelper {
  AuthHelper._();
  static AuthHelper authHelper = AuthHelper._();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  Future<UserCredential?> signIn(String email , String password) async{
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        CustomDialog.showDialogFunction('The password provided is too weak.auth helper');
        log('weak password');
      } else if (e.code == 'email-already-in-use') {
        CustomDialog.showDialogFunction('The account already exists for that email. auth helper');
        log('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<UserCredential?> logIn(String email , String password) async{
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        CustomDialog.showDialogFunction('no user found for that email!');
      } else if (e.code == 'wrong-password') {
        CustomDialog.showDialogFunction('Wrong password provided for that user.');
        print('Wrong password provided for that user.');
      }
    }
  }
  checkUser() async{
    User? user = firebaseAuth.currentUser;
    if(user == null){
      await Navigator.push(AppRouter.navKey.currentContext!, MaterialPageRoute(builder: (BuildContext context){
        return SignupScreen();
      }));
    }else{
      await Navigator.push(AppRouter.navKey.currentContext!, MaterialPageRoute(builder: (BuildContext context){
        return HomeScreen();
      }));
    }
  }

  signOut() async{
    firebaseAuth.signOut();
    AppRouter.NavigateWithReplacemtnToWidget(SignupScreen());
  }

  forgetPassword(String email) async{
    try{
      await firebaseAuth.sendPasswordResetEmail(email: email);
      CustomDialog.showDialogFunction('please check your email address to reset your password');
    }on Exception catch (e){
      CustomDialog.showDialogFunction('your email is not exist');
    }

  }
}