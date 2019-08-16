import 'package:flutter/material.dart';
import 'screens/superheroes/superheroes.dart';
import 'screens/superhero_detail/superhero_detail.dart';
import 'style.dart';

const SUPERHEROES_ROUTE = '/';
const SUPERHERO_DETAIL_ROUTE = '/superhero_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case SUPERHEROES_ROUTE:
          screen = Superheroes();
          break;
        case SUPERHERO_DETAIL_ROUTE:
          screen = SuperheroDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(title: TextStyle_AppBar)),
        textTheme: TextTheme(
            title: TextStyle_Title,
            body1: TextStyle_Body1,
            subtitle: TextStyle_Subtitle,
            caption: TextStyle_Caption));
  }
}
