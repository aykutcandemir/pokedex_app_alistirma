import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/widgets/poke_information.dart';

import '../widgets/poke_type_name.dart';

class DetailsPage extends StatelessWidget {
  final String pokeballImage = 'images/pokeball.png';
  final PokemonModel pokemon;
  const DetailsPage({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: IconButton(
              iconSize: 24.h,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          PokeNameType(pokemon: pokemon,),
          SizedBox(height: 20.h,),
          Expanded(
            child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  pokeballImage,
                  fit: BoxFit.fitHeight,
                  height: 0.15.sh,),
                right: 0,
                top: 50,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0.12.sh,
                  child: PokeInformation(pokemonModel: pokemon)
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    tag: pokemon.id!,
                    child: CachedNetworkImage(imageUrl: pokemon.img ?? '', height: 0.25.sh,
                    fit: BoxFit.fitHeight,),
                  ),
                )
              
          ],))
        ]),
      ),
    );
  }
}
