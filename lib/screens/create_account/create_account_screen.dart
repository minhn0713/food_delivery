import 'package:flutter/material.dart';
import 'package:food_delivery/screens/create_account/components/create_account_body.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account"),
      ),
      body: Body(),
    );
  }
}
