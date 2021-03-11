import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';
import '../../data/data.dart';

class PokemonItem extends StatelessWidget {
  final Pokemon pokemon;

  PokemonItem(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.pokemonDetails,
          arguments: pokemon,
        );
      },
      child: Hero(
        tag: pokemon.name,
        child: Card(
          elevation: 3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: ScreenUtil().setHeight(85),
                width: ScreenUtil().setWidth(85),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(pokemon.img),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              AppTextDisplay(
                text: pokemon.name,
                textStyle: AppTextStyles.pokemonNameGridItem(),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
