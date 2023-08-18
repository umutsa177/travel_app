import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/padding_constant.dart';
import '../../utility/constants/string_constant.dart';

class TextLoginSecond extends StatelessWidget {
  const TextLoginSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      passwordTitle,
      textAlign: TextAlign.right,
      style: GoogleFonts.nunito(
        color: ProjectColors.black.toColor().withOpacity(0.4000000059604645),
        fontSize: imageTextPadding,
        fontWeight: Fontweights.semiBold.value(),
      ),
    );
  }
}
