import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/enums/color_enums.dart';
import '../../utility/enums/fontweight_enums.dart';

class TextHomeFirst extends StatelessWidget {
  const TextHomeFirst({
    super.key,
    required this.title,
  });

  final double _fontSize = 18;
  final double _width = 187;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: maxSizedBoxHeight,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
          color: ProjectColors.black.toColor().withOpacity(0.6299999952316284),
          fontSize: _fontSize,
          fontWeight: Fontweights.bold.value(),
        ),
      ),
    );
  }
}
