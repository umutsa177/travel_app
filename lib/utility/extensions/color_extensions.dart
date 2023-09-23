import 'package:flutter/material.dart';
import 'package:travel_app/utility/enums/color_enums.dart';

extension ColorExtension on ProjectColors {
  Color toColor() {
    return switch (this) {
      ProjectColors.white => Colors.white,
      ProjectColors.black => Colors.black,
      ProjectColors.grey => Colors.grey,
      ProjectColors.taupeGray => const Color(0x708B8B8B),
      ProjectColors.spanishGray => const Color(0xFF9F9F9F),
      ProjectColors.graniteGray => const Color(0xFF5E5E5E),
      ProjectColors.aquamarine => const Color(0xFF83FFDA),
      ProjectColors.aqua => const Color(0xFF00EFFF),
      ProjectColors.richBlack => const Color(0xFF011529),
      ProjectColors.coral => const Color(0xFFFC8955),
      ProjectColors.isabelline => const Color(0x7FF1F1F1),
    };
  }
}

class CustomColors {
  static Color colorB8B8B8 = Color(0x708B8B8B);
}
