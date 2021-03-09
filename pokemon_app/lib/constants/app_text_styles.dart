import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';

class AppTextStyles {
  static TextStyle pokemonNameGridItem() {
    return TextStyle(
      fontSize: ScreenUtil().setSp(20),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle pokemonNamePokeDetails() {
    return TextStyle(
      fontSize: ScreenUtil().setSp(25),
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
