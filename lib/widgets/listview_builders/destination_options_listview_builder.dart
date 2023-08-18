import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/padding_constant.dart';

class DestinationOptionsListviewBuilder extends StatefulWidget {
  const DestinationOptionsListviewBuilder({super.key});

  @override
  State<DestinationOptionsListviewBuilder> createState() =>
      _DestinationOptionsListviewBuilderState();
}

class _DestinationOptionsListviewBuilderState
    extends State<DestinationOptionsListviewBuilder> {
  List<String> destinationOptions = [
    "Hills",
    "Beaches",
    "Mountains",
    "Parks",
    "Sea Front",
  ];

  final double _destinationOptionWidth = 97;
  final double _destinationOptionHeight = 35;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: listViewLeftPadding3x),
          decoration: BoxDecoration(
            color: ProjectColors.isabelline.toColor(), // shade200
            borderRadius: BorderRadius.circular(twoPadding4x),
          ),
          width: _destinationOptionWidth,
          height: _destinationOptionHeight,
          child: Center(
            child: Text(
              destinationOptions[index],
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                color: ProjectColors.black
                    .toColor()
                    .withOpacity(0.6299999952316284),
                fontSize: smallTextFontSize,
                fontWeight: Fontweights.bold.value(),
              ),
            ),
          ),
        );
      },
      itemCount: destinationOptions.length,
    );
  }
}
