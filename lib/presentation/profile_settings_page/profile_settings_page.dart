import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_switch.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v),
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
                      SizedBox(height: 30.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconlyCurvedWallet,
                            height: 28.adaptSize,
                            width: 28.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 5.v),
                            child: Text("Payment",
                                style: CustomTextStyles.titleMediumSemiBold_1))
                      ]),
                      SizedBox(height: 30.v),
                      _buildDarkTheme(context,
                          eyeImage: ImageConstant.imgIcons,
                          darkThemeText: "Notifications", onTapDarkTheme: () {
                        onTapDarkTheme(context);
                      }),
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
                            imagePath: ImageConstant.imgIconlyCurvedInfo,
                            height: 28.adaptSize,
                            width: 28.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, top: 5.v),
                            child: Text("Help",
                                style: CustomTextStyles.titleMediumSemiBold_1))
                      ]),
                      SizedBox(height: 30.v),
                      _buildDarkTheme3(context),
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgFloatingIconWhiteA700,
            margin: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 9.v),
            onTap: () {
              onTapFloatingIcon(context);
            }),
        title:
            AppbarTitle(text: "Profile", margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgSettingsWhiteA700,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 120.adaptSize,
          width: 120.adaptSize,
          child: Stack(alignment: Alignment.bottomRight, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse120x120,
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
      Text("Daniel Austin", style: theme.textTheme.headlineSmall),
      SizedBox(height: 11.v),
      Text("uder@domain.com", style: theme.textTheme.titleSmall)
    ]);
  }

  /// Section Widget
  Widget _buildDarkTheme3(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildDarkTheme(context,
          eyeImage: ImageConstant.imgEyeWhiteA70028x28,
          darkThemeText: "Dark Theme"),
      CustomSwitch(
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          })
    ]);
  }

  /// Common widget
  Widget _buildDarkTheme(
    BuildContext context, {
    required String eyeImage,
    required String darkThemeText,
    Function? onTapDarkTheme,
  }) {
    return GestureDetector(
        onTap: () {
          onTapDarkTheme!.call();
        },
        child: SizedBox(
            width: 148.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: eyeImage,
                      height: 28.adaptSize,
                      width: 28.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                      child: Text(darkThemeText,
                          style: CustomTextStyles.titleMediumSemiBold_1
                              .copyWith(color: appTheme.whiteA700)))
                ])));
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
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  /// Navigates to the notificationSettingsScreen when the action is triggered.
  onTapDarkTheme(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationSettingsScreen);
  }

  /// Navigates to the securityScreen when the action is triggered.
  onTapIconlyCurvedShield(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.securityScreen);
  }
}
