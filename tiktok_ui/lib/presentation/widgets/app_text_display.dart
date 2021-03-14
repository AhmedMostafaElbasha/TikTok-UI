import 'package:flutter/material.dart';
import 'package:tiktok_ui/constants/constants.dart';
import 'package:tiktok_ui/utilities/utilities.dart';

class AppTextDisplay extends StatelessWidget {
  final String translation;
  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final int maxLines;

  AppTextDisplay({
    this.translation = '',
    this.text = '',
    this.maxLines = 1,
    this.textStyle,
    this.textAlign = TextAlign.center,
  }) : assert(translation != '' || text != null);

  @override
  Widget build(BuildContext context) {
    return Text(
      translation == ''
          ? text
          : AppLocalizations.of(context).translate(translation),
      textAlign: textAlign,
      style: textStyle ?? AppTextStyles.regularFont(),
      maxLines: maxLines,
    );
  }
}
