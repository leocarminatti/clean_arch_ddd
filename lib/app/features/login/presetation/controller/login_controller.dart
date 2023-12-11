import 'package:flutter_clean_architecture/app/features/login/domain/entities/login_entity.dart';
import 'package:flutter_clean_architecture/app/features/login/domain/usecases/login_use_case.dart';

enum stateLogin { loading, success, error }

class LoginController {
  final LoginUseCase useCase;

  LoginController({required this.useCase});

  Future<bool> login(String user, String password) async {
    try {
      final result = await useCase(
        LoginEntity(user: user, password: password),
      );
      return result;
    } catch (e) {
      return false;
    }
  }
}
