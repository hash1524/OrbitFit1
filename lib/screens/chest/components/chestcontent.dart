import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/size_config.dart';

class ChestContent extends StatelessWidget {
  const ChestContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Chest',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Spacer(
          flex: 2,
        ),
        Text(
          'Scroll for description',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          flex: 50,
          child: SingleChildScrollView(
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
