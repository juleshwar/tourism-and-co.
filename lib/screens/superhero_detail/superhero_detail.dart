import 'package:flutter/material.dart';
import 'package:tourist_places/screens/superhero_detail/image_banner.dart';
import 'text_section.dart';
import '../../models/superhero.dart';

class SuperheroDetail extends StatelessWidget {
  static final superheroes = Superhero.fetchAll();
  static final superhero = superheroes.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marvel Superheroes"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/thanos.jpg"),
          ...textSections(superhero)
        ],
      )
    );
  }
  List<Widget> textSections(superhero) {
    return superhero.facts
      .map<Widget>((fact) => TextSection(fact.title, fact.text))
      .toList();
  }
}