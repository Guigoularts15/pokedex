import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/stats.dart';

class Weaknesses extends StatelessWidget {
  final PokemonStats statsObj;
  Weaknesses(this.statsObj);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Fraquezas",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var item in statsObj.weaknesses) item,
            ],
          )
        ],
      ),
    );
  }
}
