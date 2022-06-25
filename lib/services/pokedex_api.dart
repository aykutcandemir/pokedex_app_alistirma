// ignore_for_file: unused_field

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> _tumPokemonlar = [];
    var result = await Dio().get(_url);
    var pokemonList = jsonDecode(result.data)['pokemon'];
    if (pokemonList is List) {
      _tumPokemonlar =
          pokemonList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }

    return _tumPokemonlar;
  }
}
