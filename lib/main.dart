import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/intro.dart';
import 'package:get/get.dart';

//import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          textTheme: TextTheme(
            headline6: TextStyle(
                color: Color(0xFF000000),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        scaffoldBackgroundColor: kWhiteColor,
        primaryColor: kPrimaryColor,
      ),
      home: IntroScreen(),
    );
  }
}
