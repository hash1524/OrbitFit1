import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/tour/components/tourcontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> tourData = [
    {
      "text":
          "Welcome to OrbitFit.This is the homepage once you've logged in.Press the Menu option to unravel all the features",
      "image": "assets/images/page1.JPG",
    },
    {
      "text":
          "This is the Menu bar.There are 2 options saying \"Workouts\" and \"Macros\" in the start but they are inaccessible when you are a new user.",
      "image": "assets/images/page2.JPG",
    },
    {
      "text":
          " To acces them you have to first calculate your BMI. This instruction is also shown by a note in the Menu bar",
      "image": "assets/images/page3.JPG",
    },
    {
      "text":
          "This is the BMI calculator. Select your Gender, Height(in cm), Weight(in kgs), and Age and hit the \"Calculate\" button.",
      "image": "assets/images/page4.jpg",
    },
    {
      "text":
          "Here is the result along with your BMI. You are divided into \"Normal\"/\"Underweight\"/\"Overweight\" categories",
      "image": "assets/images/page5.JPG",
    },
    {
      "text":
          "Now that you have calculated your BMI and the app knows what category you belong to, customized Workouts and Macros are waiting for you behind the buttons😉",
      "image": "assets/images/page6.JPG",
    },
    {
      "text":
          "A pie chart containing the portions of Macros you have to consume per day is given to you along with a few example foods which are rich in each of the Macros",
      "image": "assets/images/page7.JPG",
    },
    {
      "text":
          "Under the \"Workouts\" section, you have your customized 5-Day week plan generally adviced to people under the category you fall into",
      "image": "assets/images/page8.JPG",
    },
    {
      "text":
          "Now that you know what muscle you want to work on, go to the home page and tap on the muscle category and start the grind💪",
      "image": "assets/images/page9.JPG",
    },
    {
      "text":
          "Under each Muscle category, different workouts using only body weight are designed for you. Description about form is also provided",
      "image": "assets/images/page10.JPG",
    },
    {
      "text": "You can manage your profile settings with this button",
      "image": "assets/images/page11.JPG",
    },
    {
      "text":
          "You can easily logout from the app with just a click after a rigorous workout session",
      "image": "assets/images/page12.JPG",
    },
    {
      "text":
          "Whenever you want to go through the features of the app, you can go through the App-Tour again",
      "image": "assets/images/page13.JPG",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: tourData.length,
                itemBuilder: (context, index) => TourContent(
                  image: tourData[index]["image"],
                  text: tourData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        tourData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
