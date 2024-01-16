import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/presentation/booking_name_screen/booking_name_screen.dart';
import 'package:la_noche/presentation/booking_ongoing_screen/booking_ongoing_screen.dart';
import 'package:la_noche/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';
import 'package:la_noche/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:la_noche/presentation/search_page_tab_container_page/search_page_tab_container_page.dart';
import 'package:la_noche/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {
  HomeScreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScreenTabContainerPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenTabContainerPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPageTabContainerPage;
      case BottomBarEnum.Booking:
        return AppRoutes.bookingOngoingScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileSettingsPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenTabContainerPage:
        return HomeScreenTabContainerPage();
      case AppRoutes.searchPageTabContainerPage:
        return SearchPageTabContainerPage();
      case AppRoutes.bookingOngoingScreen:
        return BookingOngoingScreen();
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return DefaultWidget();
    }
  }
}
