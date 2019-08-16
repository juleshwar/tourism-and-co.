import 'package:flutter/material.dart';
import 'package:tourist_places/models/superhero.dart';
import 'package:tourist_places/style.dart';

const SUPERHERO_TILE_HEIGHT = 100.0;

class SuperheroTile extends StatelessWidget {
  final Superhero superhero;
  final bool darkTheme;

  SuperheroTile({this.superhero, this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TEXT_COLOR_LIGHT : TEXT_COLOR_DARK;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: DEFAULT_PADDING_HORIZONTAL),
      height: SUPERHERO_TILE_HEIGHT,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            superhero.name.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.title.copyWith(color: textColor),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                child: Text(
                  "Strength:",
                  style: Theme.of(context).textTheme.subtitle,
                ),
              ),
              Text(
                superhero.strength,
                style: Theme.of(context).textTheme.subtitle,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                child: Text(
                  "Side:",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: textColor),
                ),
              ),
              Text(
                superhero.side,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: textColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
