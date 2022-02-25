import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../dashboard/dashboard_view.dart';
import 'login_logic.dart';

class LoginPage extends GetView<LoginLogic> {
  @override
  Widget build(BuildContext context) {
    LoginLogic controller = Get.put(LoginLogic());
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page '),
      ),
      body: Center(
          child: FloatingActionButton.extended(
          onPressed: () {

          controller.login();
        },
        icon: Icon(Icons.mail),
        label: Text('Sign in with gmail'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
    );
  }
}
