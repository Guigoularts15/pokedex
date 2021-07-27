import 'package:flutter/material.dart';

class PokemonType extends StatelessWidget {
  final int color;
  final String name;
  PokemonType(this.color, this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(color)),
      child: Text(
        name,
        style: TextStyle(
            fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
