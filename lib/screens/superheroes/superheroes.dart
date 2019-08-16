import 'package:flutter/material.dart';
import 'package:tourist_places/screens/superheroes/tile_overlay.dart';
import 'package:tourist_places/widgets/image_banner.dart';
import '../../app.dart';
import '../../models/superhero.dart';

class Superheroes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final superheroes = Superhero.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Superheroes'),
      ),
      body: ListView.builder(
        itemCount: superheroes.length,
        itemBuilder: (context, index) =>
            _itemBuilder(context, superheroes[index]),
      ),
    );
  }

  _onSuperheroTap(BuildContext context, int superheroID) {
    Navigator.pushNamed(context, SUPERHERO_DETAIL_ROUTE,
        arguments: {'id': superheroID});
  }

  Widget _itemBuilder(BuildContext context, Superhero superhero) {
    return GestureDetector(
      onTap: () => _onSuperheroTap(context, superhero.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(
              assetPath: superhero.imagePath,
              height: 245.0,
            ),
            TileOverlay(superhero)
          ],
        ),
      ),
    );
  }
}
