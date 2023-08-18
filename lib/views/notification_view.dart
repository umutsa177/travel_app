import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/padding_constant.dart';
import 'package:travel_app/utility/constants/string_constant.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';

import '../utility/constants/double_constant.dart';
import '../utility/enums/color_enums.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: gridViewHeight,
              width: gridViewWidth,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: seven.toInt(),
                itemBuilder: (context, index) {
                  return const Center(child: NotificationViewText());
                },
                padding: const EdgeInsets.all(twoPadding2x),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class NotificationViewText extends StatelessWidget {
  const NotificationViewText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      notificationViewText,
      style: GoogleFonts.qwigley(
        color: ProjectColors.spanishGray.toColor(),
        fontSize: profileAppBarIconWidth2x,
        fontWeight: Fontweights.regular.value(),
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
