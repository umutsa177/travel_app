import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/natural_destination_model.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../../utility/constants/padding_constant.dart';

class NaturalDestinationListviewBuilder extends StatefulWidget {
  const NaturalDestinationListviewBuilder({super.key});

  @override
  State<NaturalDestinationListviewBuilder> createState() =>
      _NaturalDestinationListviewBuilderState();
}

class _NaturalDestinationListviewBuilderState
    extends State<NaturalDestinationListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: NaturalDestinationModel.naturalItems.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(right: topPadding),
          width: naturalListviewWidth,
          height: naturalListviewHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(topPadding),
            color: ProjectColors.isabelline.toColor(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: naturalImagewWidth,
                height: naturalImageHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(minSizedBoxHeight),
                ),
                child: Image.asset(
                  NaturalDestinationModel.naturalItems[index].imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    NaturalDestinationModel.naturalItems[index].destinationName,
                    style: GoogleFonts.nunito(
                      color: ProjectColors.graniteGray.toColor(),
                      fontSize: mediumSizedBoxHeight,
                      fontWeight: Fontweights.semiBold.value(),
                    ),
                  ),
                  Text(
                    "Rs. ${NaturalDestinationModel.naturalItems[index].price}/-",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.nunito(
                      color: ProjectColors.graniteGray.toColor(),
                      fontSize: imageTextPadding,
                      fontWeight: Fontweights.extraBold.value(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
