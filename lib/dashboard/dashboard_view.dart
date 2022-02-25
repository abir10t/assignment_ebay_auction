import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solve/login/login_logic.dart';

import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  String name;
  DashboardPage({Key? key, required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    DashboardLogic controller = Get.put(DashboardLogic());
    LoginLogic loginController = Get.put(LoginLogic());
    return Scaffold(
      appBar: AppBar(title:Text("Welcome "+ name.toString(),),actions: [
        InkWell(
          onTap: ()
          {
            loginController.logout();
          },
            child: Icon(Icons.logout,))
      ],),
      body: Container(),
    );
  }
}
