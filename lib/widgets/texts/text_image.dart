import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/string_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/double_constant.dart';

class ImageText extends StatelessWidget {
  const ImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      loginImageTitle,
      textAlign: TextAlign.center,
      style: GoogleFonts.qwigley(
        color: ProjectColors.richBlack.toColor(),
        fontSize: dropDownYearWidth,
        fontWeight: Fontweights.regular.value(),
      ),
    );
  }
}
