import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 30),
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bake.jpeg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "McDonald's",
                      style: GoogleFonts.alegreya(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$\$ * Chinese * American * Deshi food",
                      style: GoogleFonts.alegreya(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/food.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cafe Brichor's",
                      style: GoogleFonts.alegreya(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$\$ * Chinese * American * Deshi food",
                      style: GoogleFonts.alegreya(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
