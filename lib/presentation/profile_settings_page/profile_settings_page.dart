import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:la_noche/presentation/notification_settings_screen/notification_settings_screen.dart';
import 'package:la_noche/presentation/security_screen/security_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingsPage extends StatelessWidget {
  ProfileSettingsPage({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildProfile(context),
                      SizedBox(height: 60.v),
                      GestureDetector(
                          onTap: () {
                            onTapLock(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 28.adaptSize,
                                width: 28.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.h, top: 2.v, bottom: 3.v),
                                child: Text("Edit Profile",
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_1))
                          ])),
                      // SizedBox(height: 30.v),
                      // Row(children: [
                      //   CustomImageView(
                      //       imagePath: ImageConstant.imgIconlyCurvedWallet,
                      //       height: 28.adaptSize,
                      //       width: 28.adaptSize),
                      //   Padding(
                      //       padding: EdgeInsets.only(left: 20.h, top: 5.v),
                      //       child: Text("Payment",
                      //           style: CustomTextStyles.titleMediumSemiBold_1))
                      // ]),
                      SizedBox(height: 30.v),
                      GestureDetector(
                          onTap: () {
                            onTapNotificationsButton(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcons,
                                height: 28.adaptSize,
                                width: 28.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.h, top: 2.v, bottom: 3.v),
                                child: Text("Notifications",
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_1))
                          ])),
                      SizedBox(height: 30.v),
                      GestureDetector(
                          onTap: () {
                            onTapIconlyCurvedShield(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIconlyCurvedShield,
                                height: 28.adaptSize,
                                width: 28.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h, top: 5.v),
                                child: Text("Security",
                                    style:
                                        CustomTextStyles.titleMediumSemiBold_1))
                          ])),
                      SizedBox(height: 30.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUserRed400,
                            height: 28.adaptSize,
                            width: 28.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 5.v),
                            child: Text("Logout",
                                style: CustomTextStyles.titleMediumRed400))
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
  }

  
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 76.v,
        leadingWidth: 76.h,
        leading: Container(
          margin: EdgeInsets.only(left: 17, top: 5, right: 8),
          width: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: theme.colorScheme.primary,
          ),
          child: AppbarLeadingImage(
            imagePath: ImageConstant.imgFloatingIcon,
            margin: EdgeInsets.all(0),
          ),
        ),
        title:
            AppbarTitle(text: "Settings", margin: EdgeInsets.only(top: 5)),
        );
  }

  
  Widget _buildProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(
          height: 120.adaptSize,
          width: 120.adaptSize,
          child: Stack(alignment: Alignment.bottomRight, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse,
                height: 120.adaptSize,
                width: 120.adaptSize,
                radius: BorderRadius.circular(60.h),
                alignment: Alignment.center),
            CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 30.adaptSize,
                width: 30.adaptSize,
                alignment: Alignment.bottomRight)
          ])),
      SizedBox(height: 10.v),
      Text("Steve Ndicunguye", style: theme.textTheme.headlineSmall),
      SizedBox(height: 11.v),
      Text("ndicunguyesteve4@gmail.com", style: theme.textTheme.titleSmall)
    ]);
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapFloatingIcon(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    // if (!await launchUrlString(url)) {
    //   throw 'Could not launch https://accounts.google.com/';
    // }
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditProfileScreen()),
    );
  }

  /// Navigates to the notificationSettingsScreen when the action is triggered.
  onTapNotificationsButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotificationSettingsScreen()),
    );
  }

  /// Navigates to the securityScreen when the action is triggered.
  onTapIconlyCurvedShield(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecurityScreen()),
    );
  }
}
