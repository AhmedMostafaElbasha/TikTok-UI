import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle regularFont() {
    return TextStyle();
  }

  static TextStyle selectedTab() {
    return TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle shareAction() {
    return TextStyle(fontSize: 10.0);
  }

  static TextStyle socialAction() {
    return TextStyle(fontSize: 12.0);
  }

  static TextStyle userId() {
    return TextStyle(fontWeight: FontWeight.bold);
  }

  static TextStyle videoDetailsHeading() {
    return TextStyle(fontSize: 12);
  }
}
