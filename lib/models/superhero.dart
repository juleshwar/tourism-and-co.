import './superhero_fact.dart';

class Superhero {
  final String name;
  final List<SuperheroFact> facts;

  Superhero(this.name, this.facts);

  static List<Superhero> fetchAll() {
    return [
      Superhero("Thanos", [
        SuperheroFact(
          'Summary', 
          'So this guy fuckin collected six infinity stones and destroyed half of the universe.'
        ),
        SuperheroFact(
          'Fact', 
          'Boi is pretty stronk imo.'
        )
      ])
    ];
  }

}