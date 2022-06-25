import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/constants/ui_helper.dart';

import '../model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({required this.pokemon ,Key? key}) : super(key: key);
  final String pokeballImageUrl = 'images/pokeball.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl, 
            width: UIHelper.calculatePokeImageAndBallSize(), 
            height: UIHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
            ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? '',
              errorWidget:(context, url, error) => Icon(Icons.ac_unit) ,
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context,url){
                return const CircularProgressIndicator(
                  color: Colors.red,
                );
              },
              ),
          ),
        )
      ],
    );
  }
}
