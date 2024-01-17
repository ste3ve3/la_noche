import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today",
                            style: CustomTextStyles.titleMediumSemiBold_1),
                        SizedBox(height: 18.v),
                        _buildAutoLayoutHorizontal(context),
                        SizedBox(height: 24.v),
                        _buildAutoLayoutHorizontal1(context),
                        SizedBox(height: 25.v),
                        Text("Yesterday", style: theme.textTheme.titleMedium),
                        SizedBox(height: 22.v),
                        _buildNotifications(context)
                      ])),
            )));
  }

  
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title: AppbarTitle(
            text: "Notifications", margin: EdgeInsets.only(left: 16.h)),
        );
  }

  
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.outlineBlackC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCheckmarkPrimary80x83,
              height: 80.v,
              width: 83.h),
          Padding(
              padding: EdgeInsets.only(top: 18.v, bottom: 16.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Payment Successful!",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    Text("Laluna booking was successful!",
                        style: CustomTextStyles.titleSmallGray40001)
                  ]))
        ]));
  }

  
  Widget _buildAutoLayoutHorizontal1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.outlineBlackC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFloatingIconCyan500,
              height: 80.v,
              width: 83.h),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 17.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("E-Wallet Connected",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    Text("E-Wallet has been connected to Helia",
                        style: CustomTextStyles.titleSmallGray40001)
                  ]))
        ]));
  }

  
  Widget _buildNotifications(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return NotificationsItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }
}
