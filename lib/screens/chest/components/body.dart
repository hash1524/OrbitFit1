import 'package:flutter/material.dart';
import 'package:orbitFit1/constants.dart';
import 'package:orbitFit1/screens/chest/components/chestcontent.dart';
import 'package:orbitFit1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> chestData = [
    {
      "text":
          "PushUps\nThe pushup needs no introduction—it is one of the greatest exercises there is.\n Not only does it strengthen your chest, but it also trains your core and builds conditioning (with no equipment necessary).\nConsider the push-up a dynamic version of a high plank: Starting in a high-plank position, you’ll place your hands shoulder-width apart, or a little bit wider.\n As you bend your elbows and lower toward the floor, your elbows should be at about a 45-degree angle to your body, Lauren Pak, NASM-certified personal trainer and cofounder of Achieve Fitness in Boston, tells SELF.\nYour fingers should be splayed, with your middle fingers pointing toward 12 o’clock.While a 45-degree angle for your arms is considered a standard push-up form, the angle that's most comfortable for you may be slightly different, so it's fine to adjust—keeping your arms in a tad closer to your body or bringing them out a little wider—based on how your shoulders and arms feel, New York City–based certified personal trainer Kira Stokes tells SELF.\nIt all depends on different factors like shoulder mobility and where you're strongest.\nWhen your chest or chin hit the floor, that’s the bottom portion of your rep.\nThen, you’ll press your body upward—think about pushing away the floor—and keep your core tight.\nWhen your elbows are fully extended, and your body is back in a high plank position, you’ve completed your rep.",
      "image": "assets/images/chest-pushups.png",
    },
    {
      "text":
          "Knee-Pushups\nThe knee push-up is a compound bodyweight exercise which builds muscle and strength in the chest muscles.",
      "image": "assets/images/chest-kneepushups1.png",
    },
    {
      "text":
          "Leaning Forwards\nThe best compound chest exercises will target multiple muscle groups including the pectoralis major and pectoralis minor, but will also engage parts of the arms, back, and shoulders.",
      "image": "assets/images/chest-bendforward1.png",
    }
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
                itemCount: chestData.length,
                itemBuilder: (context, index) => ChestContent(
                  image: chestData[index]["image"],
                  text: chestData[index]["text"],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        chestData.length,
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
