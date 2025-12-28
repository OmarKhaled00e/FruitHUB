import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  // signup
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()} and code is ${e.code}',
      );
      if (e.code == 'weak-password') {
        throw CustomExceptions(message: 'الرقم السري ضعيف جداٌ');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExceptions(
          message: 'لقد قمت بالتسجيل مسبقأ الرجاء تسجيل الدخول',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(message: 'تأكد من اتصالك بالانترنت');
      } else {
        throw CustomExceptions(
          message: 'لقد حدث خطأ ما الرجاء المحاوله مرة اخري',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()}',
      );
      throw CustomExceptions(
        message: 'لقد حدث خطأ ما الرجاء المحاوله مره اخري',
      );
    }
  }

  // login
  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}',
      );
      if (e.code == 'user-not-found') {
        throw CustomExceptions(
          message: 'الرقم السري او البريد الالكتروني غير صحيح',
        );
      } else if (e.code == 'wrong-password') {
        throw CustomExceptions(
          message: 'الرقم السري او البريد الالكتروني غير صحيح',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExceptions(message: 'تأكد من اتصالك بالانترنت');
      } else {
        throw CustomExceptions(
          message: 'لقد حدث خطأ ما الرجاء المحاوله مره اخري',
        );
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomExceptions(
        message: 'لقد حدث خطأ ما الرجاء المحاوله مره اخري',
      );
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      throw Exception('User cancelled sign in');
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  // facebook

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }

  Future<void> deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
