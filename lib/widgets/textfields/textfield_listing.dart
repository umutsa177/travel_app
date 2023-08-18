import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/cubit/listing_cubit.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/enums/fontweight_enums.dart';

class TextFieldListing extends StatefulWidget {
  const TextFieldListing({super.key});

  @override
  State<TextFieldListing> createState() => _TextFieldListingState();
}

class _TextFieldListingState extends State<TextFieldListing> {
  final TextEditingController textController = TextEditingController();
  final String _hintText = "Destination";
  final double _fontSize = 14;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        context.read<ListingCubit>().searchByItems(value);
      },
      controller: textController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      style: GoogleFonts.nunito(
        color: ProjectColors.spanishGray.toColor(),
        fontSize: _fontSize,
        fontWeight: Fontweights.medium.value(),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: const Icon(Icons.search_rounded),
        hintText: _hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
