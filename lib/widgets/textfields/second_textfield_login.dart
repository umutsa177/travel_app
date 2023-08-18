import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/constants/padding_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

class SecondLoginTextField extends StatefulWidget {
  const SecondLoginTextField({super.key});

  @override
  State<SecondLoginTextField> createState() => _SecondLoginTextFieldState();
}

class _SecondLoginTextFieldState extends State<SecondLoginTextField> {
  final TextEditingController controllerTwo = TextEditingController();

  final String _obscureText = '*';
  final bool _isSecure = true;
  final String _hintText = "Password";

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      controller: controllerTwo,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: const [AutofillHints.password],
      textInputAction: TextInputAction.done,
      obscureText: _isSecure,
      obscuringCharacter: _obscureText,
      style: GoogleFonts.nunito(
        color: ProjectColors.spanishGray.toColor(),
        fontSize: mediumSizedBoxHeight,
        fontWeight: Fontweights.regular.value(),
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(right: bottomPadding),
        suffix: const Icon(Icons.remove_red_eye_rounded),
        hintText: _hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
