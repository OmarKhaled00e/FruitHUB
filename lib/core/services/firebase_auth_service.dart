import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';

class FirebaseAuthService {
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
}
