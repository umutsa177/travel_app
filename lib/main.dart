import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';
import 'package:travel_app/views/login_view.dart';

import 'utility/constants/double_constant.dart';
import 'utility/enums/color_enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      home: const LoginView(),
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.nunito(
            color: ProjectColors.black.toColor(),
            fontSize: titlefontSize,
            fontWeight: Fontweights.bold.getValue,
            letterSpacing: appBarletterSpacing,
          ),
        ),
        textTheme: const TextTheme(),
      ),
    );
  }
}
