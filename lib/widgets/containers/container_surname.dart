import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/padding_constant.dart';
import '../../utility/enums/fontweight_enums.dart';

class SurnameContainer extends StatelessWidget {
  const SurnameContainer({super.key});

  final String title = "Last Name";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: firstContainerhWidth,
      height: textFieldHeight,
      margin: const EdgeInsets.only(
          top: bottomPadding, left: maxSizedBoxHeight, right: bottomPadding),
      padding: const EdgeInsets.only(right: mediumSizedBoxHeight),
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
