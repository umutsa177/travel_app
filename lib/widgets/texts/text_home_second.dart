import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/enums/color_enums.dart';
import '../../utility/enums/fontweight_enums.dart';

class TextHomeSecond extends StatelessWidget {
  const TextHomeSecond({
    super.key,
  });
  final double _fontSize = 14;
  final double _width = 94;
  final double _height = 15;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: Text(
        "More",
        textAlign: TextAlign.right,
        style: GoogleFonts.nunito(
          color: ProjectColors.spanishGray.toColor(),
          fontSize: _fontSize,
          fontWeight: Fontweights.semiBold.value(),
        ),
      ),
    );
  }
}
