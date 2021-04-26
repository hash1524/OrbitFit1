import 'package:flutter/material.dart';
import 'package:orbitFit1/screens/tour/components/body.dart';

class TourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour'),
      ),
      body: Body(),
    );
  }
}
