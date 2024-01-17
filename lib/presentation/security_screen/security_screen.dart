import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';
import 'package:la_noche/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SecurityScreen extends StatelessWidget {
  SecurityScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(24.h),
                child: Column(children: [
                  _buildAutoLayoutHorizontal1(context),
                  SizedBox(height: 31.v),
                  _buildAutoLayoutHorizontal2(context),
                  SizedBox(height: 31.v),
                  _buildAutoLayoutHorizontal3(context),
                  SizedBox(height: 33.v),
                  _buildGoogleAuthenticator(context),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "Change Password",
                      buttonStyle: CustomButtonStyles.fillBlueGray),
                  SizedBox(height: 5.v)
                ]))));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        height: 75.v,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title:
            AppbarTitle(text: "Security", margin: EdgeInsets.only(left: 16.h)));
  }

  Widget _buildAutoLayoutHorizontal1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child:
              Text("Face ID", style: CustomTextStyles.titleMediumSemiBold_1)),
      CustomSwitch(
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          })
    ]);
  }

  Widget _buildAutoLayoutHorizontal2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text("Remember me",
              style: CustomTextStyles.titleMediumSemiBold_1)),
      CustomSwitch(
          value: isSelectedSwitch1,
          onChange: (value) {
            isSelectedSwitch1 = value;
          })
    ]);
  }

  Widget _buildAutoLayoutHorizontal3(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child:
              Text("Touch ID", style: CustomTextStyles.titleMediumSemiBold_1)),
      CustomSwitch(
          value: isSelectedSwitch2,
          onChange: (value) {
            isSelectedSwitch2 = value;
          })
    ]);
  }

  Widget _buildGoogleAuthenticator(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text("Google Authenticator",
              style: CustomTextStyles.titleMediumSemiBold_1)),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
