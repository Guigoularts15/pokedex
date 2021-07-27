import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/stats.dart';

class StatsContainer extends StatelessWidget {
  final PokemonStats statsObj;
  StatsContainer(this.statsObj);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xff31a7d7),
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Altura",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "Peso",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(statsObj.height,
                        style: TextStyle(
                          fontSize: 24,
                        )),
                    Text(
                      "${statsObj.weight.toString()} kg",
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tipo",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "Habilidade",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    statsObj.type[0],
                    statsObj.type[1],
                    Text(
                      statsObj.ability,
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
