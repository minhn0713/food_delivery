import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivery/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reset email sent",
                style: GoogleFonts.alegreya(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "We have sent instructions email to \nyour email address.",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Having problem?",
                      style: GoogleFonts.alegreya(
                          fontSize: 15, color: Colors.green),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              MaterialButton(
                onPressed: () {},
                height: 50,
                minWidth: double.infinity,
                color: kButtonColor,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "SEND AGAIN",
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
    );
  }
}
