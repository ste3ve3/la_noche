import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/presentation/card_added_screen/card_added_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  const ConfirmPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
                  child: Column(children: [
                    _buildResortDetails(context),
                    SizedBox(height: 28.v),
                    _buildBookingDetails(context),
                    SizedBox(height: 28.v),
                    _buildPrice(context),
                    SizedBox(height: 28.v),
                    _buildPaymentMethod(context),
                    SizedBox(height: 5.v)
                  ])),
            ),
            bottomNavigationBar: _buildConfirmPayment(context)));
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 56.v,
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 17.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        title:
            AppbarTitle(text: "Payment", margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgTelevision,
              margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 17.v))
        ]);
  }

  Widget _buildResortDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.v),
        decoration: AppDecoration.outlineBlackC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
              width: 253.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle42,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        radius: BorderRadius.circular(16.h)),
                    Padding(
                        padding: EdgeInsets.only(bottom: 9.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lounge title",
                                  style: theme.textTheme.titleLarge),
                              SizedBox(height: 12.v),
                              Text("Kigali Airport",
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 12.v),
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSignalYellowA700,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("4.8",
                                        style: CustomTextStyles
                                            .titleSmallPrimary)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 8.h, top: 1.v),
                                    child: Text("(4,378 reviews)",
                                        style: theme.textTheme.bodySmall))
                              ])
                            ]))
                  ])),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 6.v),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text("27", style: CustomTextStyles.headlineSmallPrimary),
                SizedBox(height: 2.v),
                Text("/ day", style: theme.textTheme.labelMedium),
                SizedBox(height: 16.v),
                CustomImageView(
                    imagePath: ImageConstant.imgBookmarkPrimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize)
              ]))
        ]));
  }

  Widget _buildBookingDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 21.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          _buildAutoLayoutHorizontal(context,
              checkoutText: "Check in", dateText: "December 16, 2024"),
          SizedBox(height: 20.v),
          _buildAutoLayoutHorizontal(context,
              checkoutText: "Check out", dateText: "December 20, 2024"),
          SizedBox(height: 19.v),
          _buildAutoLayoutHorizontal(context,
              checkoutText: "Guest", dateText: "3")
        ]));
  }

  Widget _buildPrice(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 21.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          _buildAutoLayoutHorizontal(context,
              checkoutText: "5 days", dateText: "435.00"),
          SizedBox(height: 20.v),
          _buildAutoLayoutHorizontal(context,
              checkoutText: "Taxes & Fees (10%)", dateText: "44.50"),
          SizedBox(height: 17.v),
          Divider(),
          SizedBox(height: 21.v),
          _buildAutoLayoutHorizontal(context,
              checkoutText: "Total", dateText: "479.50")
        ]));
  }

  Widget _buildPaymentMethod(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 26.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 185.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage27x44,
                        height: 27.v,
                        width: 30.h,
                        radius: BorderRadius.circular(4.h)),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.v),
                        child: Text("•••• •••• •••• •••• 4679",
                            style: theme.textTheme.titleMedium))
                  ])),
          GestureDetector(
              onTap: () {
                onTapTxtChange(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text("Change",
                      style: CustomTextStyles.titleMediumPrimarySemiBold)))
        ]));
  }

  Widget _buildConfirmPayment(BuildContext context) {
    return CustomElevatedButton(
        text: "Confirm Payment",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 19.v));
  }

  /// Common widget
  Widget _buildAutoLayoutHorizontal(
    BuildContext context, {
    required String checkoutText,
    required String dateText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(checkoutText,
              style: CustomTextStyles.titleMediumOnPrimaryContainer
                  .copyWith(color: theme.colorScheme.onPrimaryContainer))),
      Text(dateText,
          style:
              theme.textTheme.titleMedium!.copyWith(color: appTheme.whiteA700))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the cardAddedScreen when the action is triggered.
  onTapTxtChange(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CardAddedScreen()),
    );
  }
}
