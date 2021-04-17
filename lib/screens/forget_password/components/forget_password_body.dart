import 'package:flutter/material.dart';
import 'package:food_delivery/screens/forget_instructions_sent/email_sent_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';
import 'package:food_delivery/constants.dart';

class Body extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Body> {
  TextEditingController _emailController;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot password",
                  style: GoogleFonts.alegreya(
                      fontSize: 38, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter your email address and we will send you a reset instructions.",
                  style: GoogleFonts.alegreya(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 35),
                TextFormField(
                  controller: _emailController,
                  validator: (val) => EmailValidator.validate(val)
                      ? null
                      : "Please a valid email address",
                  decoration: InputDecoration(
                    labelText: "EMAIL ADDRESS",
                    labelStyle:
                        GoogleFonts.alegreya(fontSize: 18, color: Colors.black),
                    hintText: "",
                    hintStyle: TextStyle(height: 2),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                MaterialButton(
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      print("Email: ${_emailController.text}");
                    } //else {
                    /*if (_formkey.currentState.validate()) {
                      _formkey.currentState.save();
                    }*/
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ForgetPasswordScreen()));
                  },
                  height: 50,
                  minWidth: double.infinity,
                  color: kButtonColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "RESET PASSWORD",
                    style: GoogleFonts.alegreya(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
