import 'package:flutter_clean_architecture/app/features/login/data/models/login_model.dart';

abstract interface class LoginDataSouerce {
  Future<bool> login(LoginModel model);
  Future<bool> logout();
}

class LoginDataSouerceImpl implements LoginDataSouerce {
  Future<bool> login(LoginModel model) async {
    //chamada na API
    //tratar os dados
    return true;
  }

  @override
  Future<bool> logout() async {
    //chamada na API
    //tratar os dados
    return true;
  }
}
