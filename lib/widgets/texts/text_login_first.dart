import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/string_constant.dart';

class TextLoginFirst extends StatelessWidget {
  const TextLoginFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      loginAppBarTitle,
      style: GoogleFonts.nunito(
        color: ProjectColors.black.toColor().withOpacity(maxSideWidth),
        fontSize: loginSignInFontSize,
        fontWeight: Fontweights.bold.value(),
        letterSpacing: loginSignInLetterSpacing,
      ),
    );
  }
}
