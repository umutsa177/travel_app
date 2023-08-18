import 'package:flutter/material.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';

import '../../utility/constants/double_constant.dart';
import '../../utility/constants/padding_constant.dart';
import '../../utility/enums/color_enums.dart';

class ProfileCustomText extends StatelessWidget {
  const ProfileCustomText({
    super.key,
    required this.leftPadding,
    required this.title,
    required this.topPadding,
    required this.bottomPadding,
  });

  final double leftPadding;
  final double topPadding;
  final double bottomPadding;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: leftPadding,
          right: rightPadding,
          top: topPadding,
          bottom: bottomPadding),
      child: SizedBox(
        width: customTextWidth,
        height: maxSizedBoxHeight,
        child: Text(
          title,
          style: AppBarTheme.of(context).titleTextStyle?.copyWith(
                color: ProjectColors.spanishGray.toColor(),
                fontSize: mediumTextFontSize,
                letterSpacing: minSideWidth,
              ),
        ),
      ),
    );
  }
}
