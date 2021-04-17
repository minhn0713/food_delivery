import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivery/screens/home_page/components/home_page_body.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DELIVERY TO"),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              "Filter",
              style: GoogleFonts.alegreya(fontSize: 20, color: Colors.green),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
