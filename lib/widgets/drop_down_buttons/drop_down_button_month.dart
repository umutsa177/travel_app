import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/double_constant.dart';
import '../../utility/enums/fontweight_enums.dart';

class DropDownButtonMonth extends StatelessWidget {
  const DropDownButtonMonth({super.key});

  final String title = "Month";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dropDownMonthWidth,
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
