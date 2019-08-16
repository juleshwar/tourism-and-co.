import 'package:flutter/material.dart';
import 'package:tourist_places/models/superhero.dart';
import 'package:tourist_places/widgets/superhero_tile.dart';

class TileOverlay extends StatelessWidget {
  final Superhero superhero;

  TileOverlay(this.superhero);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
          child: SuperheroTile(
            superhero: superhero,
            darkTheme: true,
          ),
        )
      ],
    );
  }
}
