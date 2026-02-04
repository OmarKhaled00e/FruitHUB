import 'dart:convert';

import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/shared_preference_singlton.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entites/user_entity.dart';

UserEntity? getUser() {
  final jsonString = Prefs.getString(kUserData);

  if (jsonString == null || jsonString.isEmpty) {
    return null;
  }

  return UserModel.fromJson(jsonDecode(jsonString));
}
