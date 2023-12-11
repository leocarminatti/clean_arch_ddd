import 'package:flutter_clean_architecture/app/features/login/domain/entities/login_entity.dart';

class LoginModel {
  final String user;
  final String password;

  LoginModel({required this.user, required this.password});

  //toJson
  //formJson

  static LoginEntity toEntity(LoginModel model) =>
      LoginEntity(user: model.user, password: model.password);
  static LoginModel toModel(LoginEntity model) =>
      LoginModel(user: model.user, password: model.password);
}
