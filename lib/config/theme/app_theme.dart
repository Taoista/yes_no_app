import 'package:flutter/material.dart';

const Color _customColor = Color(0x0F800D82);

const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorTheme.length - 1,
            "color debe ser entre 0 ${_colorTheme.length}");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorTheme[selectedColor]);
    // brightness: Brightness.dark)
  }
}
