import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 19.v),
                  child: Column(children: [
                    SizedBox(height: 5.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage,
                        height: 240.adaptSize,
                        width: 240.adaptSize),
                    SizedBox(height: 31.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: 355.h,
                            margin: EdgeInsets.only(right: 24.h),
                            child: Text(
                                "Select which contact details should we use to reset your password",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.50)))),
                    SizedBox(height: 18.v),
                    _buildUserRow(context),
                    SizedBox(height: 24.v),
                    _buildCheckmarkRow(context)
                  ])),
            ),
            bottomNavigationBar: _buildContinueButton(context)));
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
        title: AppbarTitle(
            text: "Forgot Password", margin: EdgeInsets.only(left: 16.h)));
  }

  
  Widget _buildUserRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(21.h),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
              height: 80.adaptSize,
              width: 80.adaptSize,
              padding: EdgeInsets.all(26.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
              child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("via SMS:", style: CustomTextStyles.titleSmallGray400),
                    SizedBox(height: 11.v),
                    Text("+250 7 ******90",
                        style: CustomTextStyles.titleMedium16)
                  ]))
        ]));
  }

  
  Widget _buildCheckmarkRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(23.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          Container(
              height: 80.adaptSize,
              width: 80.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 28.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 24.v,
                  width: 26.h,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("via Email:",
                        style: CustomTextStyles.titleSmallGray400),
                    SizedBox(height: 12.v),
                    Text("user@domain.com",
                        style: CustomTextStyles.titleMedium16)
                  ]))
        ]));
  }

  
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v),
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the forgotPasswordTypeOtpScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordTypeOtpScreen);
  }
}
