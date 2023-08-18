import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/constants/padding_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/enums/fontweight_enums.dart';

class NumberContainer extends StatelessWidget {
  const NumberContainer({super.key});

  final String title = "Phone Number";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: profileContainerWidth,
      height: textFieldHeight,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: maxSideWidth,
            color: ProjectColors.taupeGray.toColor(),
          ),
          borderRadius: BorderRadius.circular(twoPadding4x),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: topPadding, left: topPadding),
        child: Text(
          title,
          style: GoogleFonts.nunito(
            color: ProjectColors.spanishGray.toColor(),
            fontSize: smallTextFontSize,
            fontWeight: Fontweights.medium.value(),
          ),
        ),
      ),
    );
  }
}
