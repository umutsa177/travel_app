import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/cubit/listing_cubit.dart';
import 'package:travel_app/models/vacation_destination_model.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';
import 'package:travel_app/utility/extensions/image_extensions.dart';
import 'package:travel_app/widgets/containers/container_icon.dart';
import 'package:travel_app/widgets/textfields/textfield_listing.dart';

import '../utility/constants/double_constant.dart';
import '../utility/constants/padding_constant.dart';
import '../utility/constants/string_constant.dart';
import '../utility/enums/image_enums.dart';

class ListingView extends StatefulWidget {
  const ListingView({super.key});

  @override
  State<ListingView> createState() => _ListingViewState();
}

class _ListingViewState extends State<ListingView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListingCubit>(
      create: (context) => ListingCubit()..fetchItems(),
      child: BlocConsumer<ListingCubit, ListingStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: _listingAppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: maxSizedBoxHeight),
                  Container(
                    width: textfieldWidth,
                    height: textFieldHeight,
                    decoration: ShapeDecoration(
                      color: ProjectColors.white.toColor(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(twoPadding4x),
                        side: BorderSide(
                          width: maxSideWidth,
                          color: ProjectColors.taupeGray.toColor(),
                        ),
                      ),
                    ),
                    child: const TextFieldListing(),
                  ),
                  SizedBox(
                    height: gridViewHeight,
                    width: gridViewWidth,
                    child: _vacationItemShow(state),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar _listingAppBar() {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(left: leftPadding, top: twoPadding2x),
        child: Text(listingAppBarText),
      ),
      titleTextStyle: AppBarTheme.of(context).titleTextStyle,
      actions: const [
        SizedBox(height: maxSizedBoxHeight),
        IconContainer(),
      ],
    );
  }

  GridView _vacationItemShow(ListingStates state) {
    return GridView.count(
      crossAxisCount: twoPadding.toInt(),
      children: List.generate(
        state is ListingItemsLoaded ? state.items.length : zero.toInt(),
        (index) {
          return Container(
            width: gridviewWidth,
            height: gridviewHeight,
            margin: const EdgeInsets.only(
                left: minSizedBoxHeight,
                bottom: minSizedBoxHeight,
                top: minSizedBoxHeight),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(mediumSizedBoxHeight),
              color: ProjectColors.black.toColor(),
            ),
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  VacationDestinationModel.vacationItems[index].imagePath,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: heartIconHeight,
                  left: minSizedBoxHeight,
                  child: Stack(
                    children: [
                      Text(
                        VacationDestinationModel
                            .vacationItems[index].destinationName,
                        style: GoogleFonts.nunito(
                          color: ProjectColors.white.toColor(),
                          fontSize: mediumTextFontSize,
                          fontWeight: Fontweights.bold.value(),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: minSizedBoxHeight,
                  left: minSizedBoxHeight,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: ProjectColors.white.toColor(),
                          ),
                          const SizedBox(width: minSizedBoxHeight),
                          Text(
                            "${VacationDestinationModel.vacationItems[index].starRate}",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.nunito(
                              color: ProjectColors.white.toColor(),
                              fontSize: mediumTextFontSize,
                              fontWeight: Fontweights.bold.value(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: twoPadding4x,
                  top: seven,
                  child: Stack(
                    children: [
                      Container(
                        width: heartIconHeight,
                        height: heartIconHeight,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(mediumTextFontSize),
                          color: ProjectColors.black.toColor(),
                        ),
                        child: Center(
                          child: Image.asset(
                            Images.heartWhite.toPath,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
