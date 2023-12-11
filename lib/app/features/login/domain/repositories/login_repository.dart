import 'package:flutter_clean_architecture/app/features/login/data/models/login_model.dart';

abstract interface class LoginRepository {
  Future<bool> login(LoginModel model);
  Future<bool> logout();
}
