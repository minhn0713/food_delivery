import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery/screens/sign_in/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivery/constants.dart';
import 'package:email_validator/email_validator.dart';
import 'package:food_delivery/screens/forget_password/forget_password_screen.dart';
import 'package:food_delivery/auth.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery/screens/create_account/create_account_screen.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Body> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool _passwordVisible = true;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordVisible = false;
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Create Account",
                    style: GoogleFonts.alegreya(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  /*Text(
                    "Enter your Name, Email and Password for Sign Up.",
                    style: GoogleFonts.alegreya(fontSize: 15),
                  ),
                  TextButton(
                    child: Text(
                      "Already have account?",
                      style: GoogleFonts.alegreya(color: Colors.green),
                    ),
                    onPressed: () {},
                  ),*/

                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter your Name, Email and Password for Sign Up.",
                        style: GoogleFonts.alegreya(fontSize: 15),
                      ),
                      //SizedBox(width: 150),

                      GestureDetector(
                        onTap: () => Get.to(SignInScreen()),
                        child: Container(
                          width: 315,
                          child: Text(
                            "Already have account?",
                            style: GoogleFonts.alegreya(
                                fontSize: 15, color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "FULL NAME",
                      labelStyle: GoogleFonts.alegreya(
                          fontSize: 18, color: Colors.black),
                      hintText: "",
                      hintStyle: TextStyle(height: 2),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    controller: _emailController,
                    validator: (val) => EmailValidator.validate(val)
                        ? null
                        : "Please a valid email address",
                    decoration: InputDecoration(
                      labelText: "EMAIL ADDRESS",
                      labelStyle: GoogleFonts.alegreya(
                          fontSize: 18, color: Colors.black),
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
                  SizedBox(height: 30),
                  TextFormField(
                    obscureText: !_passwordVisible,
                    controller: _passwordController,
                    validator: (val) => val.length < 5
                        ? "Please enter a password with more than 5 characters"
                        : null,
                    decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: GoogleFonts.alegreya(
                          fontSize: 18, color: Colors.black),
                      hintText: "",
                      hintStyle: TextStyle(height: 2),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  MaterialButton(
                    onPressed: () {
                      if (_formkey.currentState.validate()) {
                        print("Email: ${_emailController.text}");
                        print("Password: ${_passwordController.text}");
                      }
                    },
                    height: 50,
                    minWidth: double.infinity,
                    color: kButtonColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.alegreya(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By Signing up you agree to our Terms \n\t\t\t\t\t\t\t\tConditions & Privacy Policy.",
                        style: GoogleFonts.alegreya(
                            fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or",
                        style: GoogleFonts.alegreya(
                            fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                          side: BorderSide(
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(width: 13),
                            SvgPicture.asset('assets/icons/facebook.svg',
                                height: 20, width: 30),
                            SizedBox(width: 72),
                            Text(
                              "CONNECT WITH FACEBOOK",
                              style: GoogleFonts.alegreya(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                          side: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                        provider.login();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            SvgPicture.asset('assets/icons/icons8-google.svg',
                                height: 20, width: 30),
                            SizedBox(width: 75),
                            Text(
                              "CONNECT WITH GOOGLE",
                              style: GoogleFonts.alegreya(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
