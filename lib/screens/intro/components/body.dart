import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/screens/intro/components/slides.dart';
import 'package:food_delivery/components/default_button.dart';
import 'package:food_delivery/screens/intro/components/slides_items.dart';
import 'package:food_delivery/screens/sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Body> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 60),
                Expanded(
                  flex: 9,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    itemCount: slideList.length,
                    itemBuilder: (context, index) => SlideItem(index),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          slideList.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  //flex: 1,
                  child: Column(
                    children: <Widget>[
                      DefaultButton(
                        text: "GET STARTED",
                        press: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new SignInScreen()));
                        },
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 7,
      width: currentPage == index ? 25 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? kButtonColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
