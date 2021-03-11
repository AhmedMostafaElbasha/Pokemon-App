import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../data/data.dart';
import '../../constants/constants.dart';

class PokemonDataRepository {
  static Future<PokemonApiResponse> pokemons() async {
    final response = await http.get(Uri.parse(AppApis.pokemonsApi));
    final responseBody = json.decode(response.body);

    if (response.statusCode == 401 || response.statusCode == 404) {
      throw Exception('pokemon data load failed. please try again later.');
    }

    return PokemonApiResponse.fromJson(responseBody);
  }
}
