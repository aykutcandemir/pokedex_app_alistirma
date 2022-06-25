import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';
import '../model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemonModel;
  const PokeInformation({required this.pokemonModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformation('Name', pokemonModel.name),
            _buildInformation('Height', pokemonModel.height),
            _buildInformation('Weight', pokemonModel.weight),
            _buildInformation('Spawn Time', pokemonModel.spawnTime),
            _buildInformation('Name', pokemonModel.name),
            _buildInformation('Weakness', pokemonModel.name),
            _buildInformation('Pre Evolution', pokemonModel.prevEvolution),
            _buildInformation('Next Evolution', pokemonModel.prevEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformation(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, ),
        if(value is List && value.isNotEmpty)
          Text(value.join(' , '))
        else if(value == null)
          Text('Not available')
        else
          Text(value),
      ],
    );
  }
}
