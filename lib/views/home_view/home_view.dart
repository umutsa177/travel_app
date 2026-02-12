import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/holiday_destination_model.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';
import 'package:travel_app/views/home_view/cubit/home_cubit.dart';
import 'package:travel_app/widgets/listview_builders/destination_options_listview_builder.dart';
import 'package:travel_app/widgets/listview_builders/natural_destination_listview_builder.dart';
import 'package:travel_app/widgets/textfields/textfield_home.dart';

import '../../utility/constants/double_constant.dart';
import '../../utility/constants/padding_constant.dart';
import '../../utility/constants/string_constant.dart';
import '../../widgets/containers/container_small_profile.dart';
import '../../widgets/texts/text_home_first.dart';
import '../../widgets/texts/text_home_second.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit()..fetchItems(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: _homeAppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: minSizedBoxHeight),
                  Container(
                    width: textFieldWidth,
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
                    child: const TextFieldHome(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: mediumSizedBoxHeight, bottom: minSizedBoxHeight, left: loginSignInFontSize),
                    child: SizedBox(
                      height: destinationListviewHeight,
                      child: DestinationOptionsListviewBuilder(),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextHomeFirst(title: textHomeFirstOneText),
                      TextHomeSecond(),
                    ],
                  ),
                  const SizedBox(height: minSizedBoxHeight),
                  SizedBox(
                    height: holidayListviewHeight,
                    child: _holidayItemShow(state),
                  ),
                  const SizedBox(height: minSizedBoxHeight),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextHomeFirst(title: textHomeFirstTwoText),
                      TextHomeSecond(),
                    ],
                  ),
                  const SizedBox(height: minSizedBoxHeight),
                  const SizedBox(
                    height: naturalListviewHeight,
                    child: NaturalDestinationListviewBuilder(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(left: homeAppBarLeftPadding, top: five),
        child: Text(homeAppBarTitle),
      ),
      titleTextStyle: AppBarTheme.of(context).titleTextStyle,
      actions: const [
        SmallProfileContainer(),
      ],
    );
  }

  _holidayItemShow(HomeStates state) {
    return state is! HomeItemsLoaded
        ? Container()
        : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              HolidayDestinationModel holidayDestinationModel = state.items[index];
              return Container(
                width: holidayListviewWidth,
                height: holidayListviewHeight,
                margin: const EdgeInsets.only(right: listViewLeftPadding2x, left: topPadding),
                padding: const EdgeInsets.only(left: listViewLeftPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(mediumSizedBoxHeight),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.asset(
                      holidayDestinationModel.imagePath,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      left: loginBottomPadding,
                      bottom: topPadding,
                      child: Text(
                        holidayDestinationModel.destinationName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          color: ProjectColors.white.toColor(),
                          fontSize: bottomPadding,
                          fontWeight: Fontweights.bold.value(),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
