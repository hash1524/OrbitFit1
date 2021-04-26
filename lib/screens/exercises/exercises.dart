import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/exercises/components/body.dart';
import 'package:orbitFit1/screens/exercises/navBar.dart';
import 'package:orbitFit1/screens/sign_in/sign_in_screen.dart';
import 'package:orbitFit1/screens/tour/tour.dart';

class ExercisesScreen extends StatefulWidget {
  static String routeName = "/exercises";

  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrbitFit'),
        actions: [
          FlatButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TourScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.card_travel,
              color: Color(0xFF8B8B8B),
            ),
            label: Text(
              "App tour",
              style: TextStyle(color: Color(0xFF8B8B8B)),
            ),
          )
        ],
      ),
      body: Body(),
      drawer: NavBar(),
    );
  }
}
