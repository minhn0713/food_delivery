import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/sign_in/components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  //static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Login(),
    );
  }
}
