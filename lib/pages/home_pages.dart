// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/services/pokedex_api.dart';
import 'package:pokedex_app/widgets/app_title.dart';
import 'package:pokedex_app/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: ((context, orientation) {
        return Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList())],
        );
      }),
    ));
  }
}
