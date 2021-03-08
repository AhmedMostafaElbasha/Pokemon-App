import 'package:flutter/material.dart';
import '../presentation/presentation.dart';

class AppRoutes {
  static String home = '/home_screen';
  static String pokemonDetails = '/pokemon_details';

  static var routes = {
    home: (_) => HomePage(),
    pokemonDetails: (_) => PokemonDetailsPage(),
  };
}
