import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:pokemon_app/constants/constants.dart';
import 'package:pokemon_app/presentation/presentation.dart';
import 'package:pokemon_app/utilities/app_localizations.dart';
import '../../data/data.dart';

class PokemonDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Pokemon pokemon = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: AppColors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.cyan,
        title: AppTextDisplay(text: pokemon.name),
      ),
      body: Container(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: _displayPokemonDetailsCard(
          context,
          pokemon: pokemon,
        ),
      ),
    );
  }

  Widget _displayPokemonDetailsCard(
    BuildContext context, {
    Pokemon pokemon,
  }) {
    return Stack(
      children: [
        Positioned(
          height: ScreenUtil().screenHeight / 1.5,
          width: ScreenUtil().screenWidth - 20.0,
          left: 10.0,
          top: ScreenUtil().screenHeight * 0.1,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(70),
                  ),
                  child: AppTextDisplay(
                    text: pokemon.name,
                    textStyle: AppTextStyles.pokemonNamePokeDetails(),
                  ),
                ),
                AppTextDisplay(
                  text:
                      '${AppLocalizations.of(context).translate(AppStrings.height)}: ${pokemon.height}',
                ),
                AppTextDisplay(
                  text:
                      '${AppLocalizations.of(context).translate(AppStrings.weight)}: ${pokemon.weight}',
                ),
                _displayPokemonDetailHeading(AppStrings.typesHeading),
                _displayPokemonDataValues(
                  data: pokemon.type,
                  backgroundColor: AppColors.amber,
                ),
                _displayPokemonDetailHeading(AppStrings.weaknessHeading),
                _displayPokemonDataValues(
                  data: pokemon.weaknesses,
                  backgroundColor: AppColors.red,
                ),
                _displayPokemonNextEvolution(pokemon),
              ],
            ),
          ),
        ),
        _displayPokemonImage(pokemon),
      ],
    );
  }

  Widget _displayPokemonImage(Pokemon pokemon) {
    return Padding(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(12)),
      child: Align(
        alignment: Alignment.topCenter,
        child: Hero(
          tag: pokemon.name,
          child: Container(
            height: ScreenUtil().setHeight(160),
            width: ScreenUtil().setWidth(200),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(pokemon.img),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _displayPokemonNextEvolution(Pokemon pokemon) {
    return pokemon.nextEvolution != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _displayPokemonDetailHeading(AppStrings.nextEvolutionHeading),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(12)),
                child: _displayPokemonNextEvolutionValues(pokemon),
              )
            ],
          )
        : Container();
  }

  Widget _displayPokemonNextEvolutionValues(Pokemon pokemon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: pokemon.nextEvolution.map(
        (nextEvolution) {
          return FilterChip(
            backgroundColor: AppColors.green,
            label: AppTextDisplay(
              text: nextEvolution.name,
              textStyle: AppTextStyles.whiteText(),
            ),
            onSelected: (value) {},
          );
        },
      ).toList(),
    );
  }

  Widget _displayPokemonDetailHeading(String headingTitle) {
    return AppTextDisplay(
      translation: headingTitle,
      textStyle: AppTextStyles.pokemonDetailsSubHeading(),
    );
  }

  Widget _displayPokemonDataValues({
    List<String> data,
    Color backgroundColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: data.map((element) {
        return FilterChip(
          backgroundColor: backgroundColor,
          label: AppTextDisplay(
            text: element,
            textStyle: AppTextStyles.whiteText(),
          ),
          onSelected: (value) {},
        );
      }).toList(),
    );
  }
}
