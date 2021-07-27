import 'package:pokedex_detalhes/screens/home/widgets/type.dart';

class PokemonStats {
  String height;
  double weight;
  String ability;
  String photo;
  List<PokemonType> type;
  List<PokemonType> weaknesses;
  String flavorText;

  PokemonStats({
    required this.height,
    required this.weight,
    required this.ability,
    required this.type,
    required this.photo,
    required this.flavorText,
    required this.weaknesses,
  });
}
