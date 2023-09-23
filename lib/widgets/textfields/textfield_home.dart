import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';
import 'package:travel_app/views/home_view/cubit/home_cubit.dart';

import '../../utility/constants/string_constant.dart';
import '../../utility/enums/fontweight_enums.dart';

class TextFieldHome extends StatefulWidget {
  const TextFieldHome({super.key});

  @override
  State<TextFieldHome> createState() => _TextFieldHomeState();
}

final TextEditingController _textEditingController = TextEditingController();

class _TextFieldHomeState extends State<TextFieldHome> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        context.read<HomeCubit>().searchByItems(value);
      },
      controller: _textEditingController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      style: GoogleFonts.nunito(
        color: ProjectColors.spanishGray.toColor(),
        fontSize: smallTextFontSize,
        fontWeight: Fontweights.medium.value(),
      ),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: Icon(Icons.search_rounded),
        hintText: homeTextFieldHintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
