import 'package:flutter/material.dart';

class UnderWeightMacrosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Macros'),
      ),
      body: Column(
        children: [
          Spacer(),
          Text(
            'You have to make sure that all your meals combined for the day should have macros in the portions as shown',
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Image.asset('assets/images/underMacro.png'),
          Spacer(),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Protein foods",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      'Black beans\nLima Beans\nCorn\nSalmon\nPotatoes\nBroccoli\nCauliflower\nCabbage'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Carbohydrate foods',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      'Lean meat\nFish\nNuts\nSeeds\nApples\nBlueberries\nStrawberries\n'),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'Fat(Good) foods',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                      'Avacados\nCheese\nDark Chocolate\nWhole Eggs\nFatty Fish\nChia Seeds\nCoconuts\nYogurts'),
                ],
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
