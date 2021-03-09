import 'package:flutter/material.dart';
import 'package:pokemon_app/constants/app_text_styles.dart';
import '../../utilities/utilities.dart';

class AppTextDisplay extends StatelessWidget {
  final String translation;
  final String text;
  final int maxLines;
  final TextAlign textAlign;
  final TextStyle textStyle;

  AppTextDisplay({
    this.translation = '',
    this.text = '',
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.textStyle,
  }) : assert(translation != '' || text != '');

  @override
  Widget build(BuildContext context) {
    return Text(
      translation == ''
          ? text
          : AppLocalizations.of(context).translate(translation),
      style: textStyle ?? AppTextStyles.regularStyle(),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
