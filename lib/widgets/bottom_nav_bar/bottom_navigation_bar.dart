import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/utility/constants/double_constant.dart';
import 'package:travel_app/utility/enums/color_enums.dart';
import 'package:travel_app/utility/enums/fontweight_enums.dart';
import 'package:travel_app/utility/extensions/color_extensions.dart';
import 'package:travel_app/utility/extensions/fontweight_extensions.dart';
import 'package:travel_app/views/home_view/home_view.dart';
import 'package:travel_app/views/listing_view.dart';
import 'package:travel_app/views/notification_view.dart';
import 'package:travel_app/views/profile_view.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

List<String> views = [
  "Home",
  "Listing",
  "Notification",
  "Profile",
];

int index = 0;

Widget activeView = const HomeView();

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeView,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ProjectColors.black.toColor(),
        selectedItemColor: ProjectColors.white.toColor(),
        unselectedItemColor: ProjectColors.white.toColor(),
        selectedIconTheme: IconThemeData(
          color: ProjectColors.coral.toColor(),
          size: profileAppBarIconWidth,
        ),
        unselectedIconTheme: IconThemeData(
          color: ProjectColors.white.toColor(),
          size: profileAppBarIconWidth,
        ),
        selectedLabelStyle: GoogleFonts.nunito(
          color: ProjectColors.black.toColor(),
          fontSize: minSizedBoxHeight,
          fontWeight: Fontweights.semiBold.value(),
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          color: ProjectColors.black.toColor(),
          fontSize: minSizedBoxHeight,
          fontWeight: Fontweights.semiBold.value(),
        ),
        currentIndex: index,
        onTap: _onTapView,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: views.first,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.web_stories),
            label: views.elementAt(1),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications),
            label: views.elementAt(2),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: views.last,
          ),
        ],
      ),
    );
  }

  void _onTapView(int value) {
    switch (value) {
      case 0:
        setState(() {
          index = 0;
          activeView = const HomeView();
        });
        break;
      case 1:
        setState(() {
          index = 1;
          activeView = const ListingView();
        });
        break;
      case 2:
        setState(() {
          index = 2;
          activeView = const NotificationView();
        });
        break;
      case 3:
        setState(() {
          index = 3;
          activeView = const ProfileView();
        });
        break;
    }
  }
}
