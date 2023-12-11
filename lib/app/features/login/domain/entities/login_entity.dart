class LoginEntity {
  final String user;
  final String password;

  LoginEntity({required this.user, required this.password});

  bool isValid() {
    return user.isNotEmpty && password.isNotEmpty;
  }

  bool isValidPassword() {
    if (password.length >= 6 || password.length <= 8) {
      return true;
    } else if (password.contains('@')) {
      return true;
    }
    return false;
  }
}
