import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/features/login/presetation/controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.controller});

  final LoginController controller;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          widget.controller.login('leocarminatti@gmail.com', '123@123');
        },
      ),
    );
  }
}
