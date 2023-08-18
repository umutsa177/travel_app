import 'package:flutter/material.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/image_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/image_extensions.dart';
import 'package:travel_app/widgets/bottom_nav_bar/bottom_navigation_bar.dart';
import 'package:travel_app/widgets/textfields/first_textfield_login.dart';
import 'package:travel_app/widgets/textfields/second_textfield_login.dart';
import 'package:travel_app/widgets/texts/test_login_third.dart';
import 'package:travel_app/widgets/texts/text_login_first.dart';
import 'package:travel_app/widgets/texts/text_login_second.dart';
import 'package:travel_app/widgets/texts/textspans.dart';

import '../utility/constants/double_constant.dart';
import '../utility/constants/padding_constant.dart';
import '../widgets/texts/text_image.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(maxSizedBoxHeight),
          ),
          gradient: LinearGradient(
            begin: const Alignment(linearBeginX, linearBeginY),
            end: const Alignment(linearEndX, linearEndY),
            colors: [
              ProjectColors.white.toColor(),
              ProjectColors.aquamarine.toColor(),
              ProjectColors.aqua.toColor(),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: loginTopPadding,
                    bottom: imageTextPadding,
                    right: textspanRightPadding,
                    left: textspanRightPadding),
                child: TextLoginFirst(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: loginPictureHeight,
                child: Image.asset(
                  Images.loginPicture.toPath,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    right: loginBottomPadding6x,
                    left: loginBottomPadding6x,
                    bottom: imageTextPadding),
                child: ImageText(),
              ),
              Container(
                width: loginTextFieldWidth,
                height: loginTextFieldHeight,
                decoration: ShapeDecoration(
                  color: ProjectColors.white.toColor(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(minSizedBoxHeight),
                  ),
                ),
                child: const FirstLoginTextField(),
              ),
              const SizedBox(height: mediumSizedBoxHeight),
              Container(
                width: loginTextFieldWidth,
                height: loginTextFieldHeight,
                decoration: ShapeDecoration(
                  color: ProjectColors.white.toColor(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(minSizedBoxHeight),
                  ),
                ),
                child: const SecondLoginTextField(),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: textspanRightPadding, bottom: imageTextPadding),
                width: loginTextFieldWidth,
                height: passwordContainerHeight,
                child: const TextLoginSecond(),
              ),
              Container(
                padding: const EdgeInsets.only(
                    right: textspanRightPadding, left: textspanRightPadding),
                width: loginTextFieldWidth,
                height: loginTextFieldHeight,
                decoration: BoxDecoration(
                  color: ProjectColors.black.toColor(),
                  borderRadius: BorderRadius.circular(minSizedBoxHeight),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomNavigationBarWidget(),
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextLoginThird(),
                      Icon(
                        Icons.arrow_right_alt_rounded,
                        color: ProjectColors.taupeGray.toColor(),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    right: textspanRightPadding,
                    left: textspanRightPadding,
                    bottom: bottomPadding4x),
                child: TextSpans(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
