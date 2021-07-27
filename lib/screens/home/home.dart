import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/stats.dart';
import 'package:pokedex_detalhes/screens/home/widgets/flavorText.dart';
import 'package:pokedex_detalhes/screens/home/widgets/statsContainer.dart';
import 'package:pokedex_detalhes/screens/home/widgets/type.dart';
import 'package:pokedex_detalhes/screens/home/widgets/weaknesses.dart';

class Home extends StatelessWidget {
  final pokemonStats = PokemonStats(
    height: "71cm",
    weight: 6.9,
    ability: "Crescer",
    type: [PokemonType(0xff9bcc50, "Grama"), PokemonType(0xffb97fc9, "Veneno")],
    weaknesses: [
      PokemonType(0xfffd7d24, "Fogo"),
      PokemonType(0xfff366b9, "Psíquico"),
      PokemonType(0xffbdb9b8, "Voador"),
      PokemonType(0xff51c4e7, "Gelo"),
    ],
    flavorText:
        "Há uma semente de planta em suas costas\ndesde o dia em que este Pokémon nasceu.\nA semente cresce maior lentamente.",
    photo: "assets/images/bulbasaur.png",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bulbasaur #001",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: Image.asset("assets/images/logo.png"),
        backgroundColor: Color(0xffe3360e),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Image.asset(
                  pokemonStats.photo,
                  height: 160,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlavorText(pokemonStats.flavorText),
              ],
            ),
            StatsContainer(pokemonStats),
            Weaknesses(pokemonStats)
          ],
        ),
      ),
    );
  }
}
