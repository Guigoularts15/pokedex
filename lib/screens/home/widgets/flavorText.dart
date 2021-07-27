import 'package:flutter/material.dart';

class FlavorText extends StatelessWidget {
  final String flavorText;

  FlavorText(this.flavorText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Text(
            flavorText,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
