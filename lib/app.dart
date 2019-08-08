import 'package:flutter/material.dart';

import 'screens/superhero_detail/superhero_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuperheroDetail(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: TextStyle_AppBar)
          ),
          textTheme: TextTheme(
            title: TextStyle_TitleText, 
            body1: TextStyle_Body1Text
          )),
    );
  }
}
