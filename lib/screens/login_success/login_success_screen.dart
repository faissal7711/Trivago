import 'package:flutter/material.dart';

//import 'package:e_commerce_ui/e_comm_lib_ui/screens/login_success/components/body.dart';

import 'components/body.dart';
class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
