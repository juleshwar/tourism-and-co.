import 'package:flutter/material.dart';
import 'package:tourist_places/widgets/image_banner.dart';
import 'package:tourist_places/widgets/superhero_tile.dart';
import 'text_section.dart';
import '../../models/superhero.dart';

class SuperheroDetail extends StatelessWidget {
  final int _superheroID;
  SuperheroDetail(this._superheroID);
  @override
  Widget build(BuildContext context) {
    final superhero = Superhero.fetchByID(_superheroID);
    return Scaffold(
      appBar: AppBar(title: Text(superhero.name)),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(
            assetPath: superhero.imagePath,
            height: 200.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
            child: SuperheroTile(
              superhero: superhero,
            ),
          ),
          ...textSections(superhero)
        ],
      )),
    );
  }

  List<Widget> textSections(superhero) {
    return superhero.facts
        .map<Widget>((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}