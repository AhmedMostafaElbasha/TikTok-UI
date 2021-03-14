import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle regularFont() => TextStyle();

  static TextStyle selectedTab() {
    return TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle shareAction() => TextStyle(fontSize: 10.0);

  static TextStyle socialAction() => TextStyle(fontSize: 12.0);

  static TextStyle artistDetails() => socialAction();

  static TextStyle userId() => TextStyle(fontWeight: FontWeight.bold);

  static TextStyle videoDetailsHeading() => TextStyle(fontSize: 12);
}
