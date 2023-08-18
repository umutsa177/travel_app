import 'package:flutter/material.dart';

import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/image_extensions.dart';
import 'package:travel_app/widgets/containers/container_name.dart';
import 'package:travel_app/widgets/containers/container_special_profile.dart';
import 'package:travel_app/widgets/containers/container_surname.dart';
import 'package:travel_app/widgets/drop_down_buttons/drop_down_button_month.dart';

import '../utility/constants/double_constant.dart';
import '../utility/constants/padding_constant.dart';
import '../utility/constants/string_constant.dart';
import '../utility/enums/image_enums.dart';
import '../widgets/drop_down_buttons/drop_down_button_date.dart';
import '../widgets/drop_down_buttons/drop_down_button_year.dart';
import '../widgets/texts/text_profile_custom.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _profileAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: profileImageContainerHeight,
                  height: profileImageContainerHeight,
                  margin: const EdgeInsets.only(
                      right: profileImageRightPadding,
                      left: profileImageRightPadding,
                      top: twoPadding),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        width: maxSideWidth3x,
                        color: ProjectColors.coral.toColor(),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    Images.profilePictureBig.toPath,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                ProfileCustomText(
                  leftPadding: leftPadding,
                  title: customTextFirstTitle,
                  topPadding: topPadding,
                  bottomPadding: topPadding,
                ),
                Row(
                  children: [
                    NameContainer(),
                    SurnameContainer(),
                  ],
                ),
                SizedBox(height: minSizedBoxHeight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropDownButtonYear(),
                    DropDownButtonMonth(),
                    DropDownButtonDate(),
                  ],
                ),
                ProfileCustomText(
                  leftPadding: leftPadding,
                  title: customTextSecondTitle,
                  topPadding: topPadding,
                  bottomPadding: topPadding,
                ),
                SpecialProfileContainer(title: specialContainerFirstTitle),
                SizedBox(height: minSizedBoxHeight),
                SpecialProfileContainer(title: specialContainerSecondTitle),
                ProfileCustomText(
                  leftPadding: profileAppBarIconWidth,
                  title: customTextThirdTitle,
                  topPadding: topPadding,
                  bottomPadding: topPadding,
                ),
                SpecialProfileContainer(title: specialContainerThirdTitle),
                SizedBox(height: minSizedBoxHeight),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _profileAppBar(BuildContext context) {
    return AppBar(
      title: Container(
        padding:
            const EdgeInsets.only(top: bottomPadding, right: bottomPadding4x),
        width: profileAppBarWidth,
        height: profileAppBarHeight,
        child: Text(
          profileAppBarTitle,
          style: AppBarTheme.of(context).titleTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      leading: Container(
        width: profileAppBarIconWidth,
        height: profileAppBarIconWidth,
        decoration: const BoxDecoration(),
        clipBehavior: Clip.antiAlias,
        child: const Icon(
          Icons.arrow_back_ios_rounded,
        ),
      ),
    );
  }
}
