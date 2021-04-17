import 'package:flutter/material.dart';
import 'package:food_delivery/screens/forget_instructions_sent/components/email_sent_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
