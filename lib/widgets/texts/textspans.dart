import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';

import '../../utility/enums/color_enums.dart';

class TextSpans extends StatefulWidget {
  const TextSpans({super.key});

  @override
  State<TextSpans> createState() => _TextSpansState();
}

class _TextSpansState extends State<TextSpans> {
  final String firstText = "Don't have an account?";
  final String secondText = "Create Now";

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: GoogleFonts.nunito(
              color:
                  ProjectColors.black.toColor().withOpacity(0.4000000059604645),
              fontSize: mediumSizedBoxHeight,
              fontWeight: Fontweights.semiBold.value(),
            ),
          ),
          TextSpan(
            text: secondText,
            style: GoogleFonts.nunito(
              color: ProjectColors.black.toColor(),
              fontSize: mediumSizedBoxHeight,
              fontWeight: Fontweights.semiBold.value(),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
