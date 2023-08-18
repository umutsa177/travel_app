import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

class FirstLoginTextField extends StatefulWidget {
  const FirstLoginTextField({super.key});

  @override
  State<FirstLoginTextField> createState() => _FirstLoginTextFieldState();
}

class _FirstLoginTextFieldState extends State<FirstLoginTextField> {
  final TextEditingController controllerOne = TextEditingController();
  final String _hintText = "Email or Phone No.";

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      controller: controllerOne,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      textInputAction: TextInputAction.next,
      style: GoogleFonts.nunito(
        color: ProjectColors.spanishGray.toColor(),
        fontSize: mediumSizedBoxHeight,
        fontWeight: Fontweights.regular.value(),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: _hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
