import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up (Blank)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpBlankScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In ",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Buy Membership",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.buyMembershipScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Fill Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.fillProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password - Type OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create New Password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Screen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recently Booked",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recentlyBookedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My Bookmarks",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myBookmarksScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search Type",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchTypeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Hotel Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.hotelDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gallery",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.galleryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Location",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select date & Guest",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectDateGuestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booking Name",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingNameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose Payment Method",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.choosePaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add New Card",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Card Added",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cardAddedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Confirm Payment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.confirmPaymentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View Ticket",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewTicketScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booking Ongoing",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingOngoingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booking Cancelled",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingCancelledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Refund Method",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.refundMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Security",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Review",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.reviewScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
