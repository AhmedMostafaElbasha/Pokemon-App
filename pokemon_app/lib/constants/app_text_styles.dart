import 'package:flutter/material.dart';
import '../constants/constants.dart';

class AppTextStyles {
  static TextStyle pokemonNameGridItem() {
    return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle pokemonNamePokeDetails() {
    return TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle pokemonDetailsSubHeading() {
    return TextStyle(
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle whiteText() {
    return TextStyle(
      color: AppColors.white,
    );
  }

  static TextStyle regularStyle() {
    return TextStyle();
  }
}
