import 'package:flutter_clean_architecture/app/features/login/data/datasourcies/login_data_source.dart';
import 'package:flutter_clean_architecture/app/features/login/data/models/login_model.dart';
import 'package:flutter_clean_architecture/app/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSouerce dataSouerce;

  LoginRepositoryImpl({required this.dataSouerce});

  @override
  Future<bool> login(LoginModel model) async {
    return await dataSouerce.login(model);
  }

  @override
  Future<bool> logout() async {
    return await dataSouerce.logout();
  }
}
