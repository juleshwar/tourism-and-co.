import './superhero_fact.dart';

class Superhero {
  final int id;
  final String name;
  final String imagePath;
  final String side;
  final String strength;
  final List<SuperheroFact> facts;

  Superhero(
      {this.id,
      this.name,
      this.imagePath,
      this.side,
      this.strength,
      this.facts});

  static List<Superhero> fetchAll() {
    return [
      Superhero(
          id: 1,
          name: "Thanos",
          side: "The Other Side",
          strength: "Over 9999",
          imagePath: 'assets/images/thanos.jpg',
          facts: [
            SuperheroFact('Summary',
                'So this guy fuckin collected six infinity stones and destroyed half of the universe.'),
            SuperheroFact('Fact', 'Boi is pretty stronk imo.'),
            SuperheroFact('Is he Thanos?', 'Yes!')
          ]),
      Superhero(
          id: 2,
          name: "Spiderman",
          side: "The Protagonists",
          strength: "1749",
          imagePath: 'assets/images/spiderman.jpg',
          facts: [
            SuperheroFact('Summary',
                "So this guy's uncle was killed beacuse of Sandman. Makes himself a suit and hangs around using his web"),
            SuperheroFact('Fact', 'Stronk and agile. Moves fast.'),
            SuperheroFact('Is he Thanos?', 'No!')
          ]),
      Superhero(
          id: 3,
          name: "Captain America",
          side: "The Protagonists",
          strength: "5720",
          imagePath: 'assets/images/captain_america.jpg',
          facts: [
            SuperheroFact('Summary',
                "Idk much about this guy. I know that he's respected by his peers and is the leader of the avengers. Has an adamantium shield and a pretty nice ass. (#No_homo)"),
            SuperheroFact('Fact', 'Very stronk shield and body.'),
            SuperheroFact('Is he Thanos?', 'No!')
          ]),
      Superhero(
          id: 4,
          name: "Goose The Cat",
          side: "Cats",
          strength: "♾",
          imagePath: 'assets/images/goose.jpg',
          facts: [
            SuperheroFact('Summary',
                "Just a cute little cat I don't know much about. From the looks of it the cat seems to be the main marvel character. Would definitely pet again 11/10. "),
            SuperheroFact('Special Attacks', "*purr*"),
            SuperheroFact("Cuteness Factor", "Impeccably cute. Heroes from parallel universes have been visiting out universe to pet this lad."),
            SuperheroFact(
                'Is him Thanos?', "No. It is something even better 🐱🐱🐱!!")
          ])
    ];
  }

  static Superhero fetchByID(int locationID) {
    List<Superhero> superheroes = Superhero.fetchAll();
    for (var i = 0; i < superheroes.length; i++) {
      if (superheroes[i].id == locationID) {
        return superheroes[i];
      }
    }
    return null;
  }
}
