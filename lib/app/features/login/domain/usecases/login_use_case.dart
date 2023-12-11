import 'package:flutter_clean_architecture/app/features/login/data/models/login_model.dart';
import 'package:flutter_clean_architecture/app/features/login/domain/entities/login_entity.dart';
import 'package:flutter_clean_architecture/app/features/login/domain/repositories/login_repository.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  Future<bool> call(LoginEntity entity) async {
    if (!entity.isValid()) {
      return false;
    } else if (!entity.isValidPassword()) {
      return false;
    }

    final result = repository.login(
      LoginModel.toModel(entity),
    );

    return result;
  }
}
