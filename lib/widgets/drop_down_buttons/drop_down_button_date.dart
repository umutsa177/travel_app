import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/enums/fontweight_enums.dart';

class DropDownButtonDate extends StatelessWidget {
  const DropDownButtonDate({super.key});

  final String title = "Date";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dropDownYearWidth,
      height: textFieldHeight,
      child: DropdownButton(
        items: const [],
        onChanged: (value) {},
        hint: Text(
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
