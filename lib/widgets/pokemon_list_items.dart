import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constants/constants.dart';
import 'package:pokedex_app/constants/ui_helper.dart';
import 'package:pokedex_app/pages/details_page.dart';
import 'package:pokedex_app/widgets/poke_image_and_ball.dart';

import '../model/pokemon_model.dart';

class PokemonListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: Sabitler.getPokemonTextStyle(),
              ),
              Chip(
                  label: Text(
                pokemon.type![0],
                style: Sabitler.getChipTextStyle(),
              )),
              Expanded(child: PokeImageAndBall(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
