import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../model/pokemon_model.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeNameType({required this.pokemon ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            
            children: [
              Expanded(child: Text(pokemon.name ?? '', style: Sabitler.getPokemonTextStyle(),)),
              Text('#${pokemon.num}', style: Sabitler.getPokemonTextStyle(),)
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(pokemon.type?.join(' , ')?? '', 
            style: Sabitler.getChipTextStyle(),))
        ],
      ),
    );
  }
}
