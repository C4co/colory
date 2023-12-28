import 'package:flutter/material.dart';

List<Color> blackWhiteRange() {
  List<Color> colors = [];

  for (var i = 0; i < 15; i++) {
    colors.add(
      Color.fromARGB(
        255,
        255 - (i * 18),
        255 - (i * 18),
        255 - (i * 18),
      ),
    );
  }

  return colors;
}

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

List<Color> variations({required Color color}) {
  List<Color> darkVariations = [];
  List<Color> ligthVariations = [];

  for (var i = 0; i < 9; i++) {
    darkVariations.add(darken(color, 0.05 * (i + 1)));
  }

  for (var i = 0; i < 9; i++) {
    ligthVariations.add(lighten(color, 0.05 * (i + 1)));
  }

  return darkVariations.reversed.toList() + ligthVariations;
}
