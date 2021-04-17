import 'package:flutter/material.dart';
import 'package:food_delivery/screens/intro/components/slides.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 100),
        Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(slideList[index].image),
            ),
          ),
        ),
        Spacer(),
        Text(
          slideList[index].title,
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          slideList[index].desc,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
