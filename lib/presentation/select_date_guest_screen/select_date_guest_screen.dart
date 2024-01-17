import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/presentation/choose_payment_method_screen/choose_payment_method_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SelectDateGuestScreen extends StatelessWidget {
  SelectDateGuestScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 20.v),
                  child: Column(children: [
                    SizedBox(height: 7.v),
                    _buildDateCalendar(context),
                    SizedBox(height: 20.v),
                    _buildBookingDetails(context),
                    SizedBox(height: 22.v),
                    Text("Total: 435", style: theme.textTheme.titleMedium)
                  ])),
            ),
            bottomNavigationBar: _buildContinue(context)));
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
            text: "Select Date & Guests", margin: EdgeInsets.only(left: 16.h)));
  }

  Widget _buildDateCalendar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 72.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: SizedBox(
            height: 251.v,
            width: 334.h,
            child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    firstDayOfWeek: 0),
                value: selectedDatesFromCalendar1,
                onValueChanged: (dates) {})));
  }

  Widget _buildBookingDetails(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 78.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Check in", style: theme.textTheme.titleMedium),
            Text("Check out", style: theme.textTheme.titleMedium)
          ])),
      SizedBox(height: 11.v),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        _buildCheckOut(context, counterText: "Dec 16"),
        CustomImageView(
            imagePath: ImageConstant.imgFavoriteWhiteA700,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 18.v)),
        _buildCheckOut(context, counterText: "Dec 20")
      ]),
      SizedBox(height: 30.v),
      Text("Guest", style: theme.textTheme.titleMedium),
      SizedBox(height: 15.v),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 82.h, vertical: 11.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                height: 52.adaptSize,
                width: 52.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.outlineIndigoA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrameWhiteA70020x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.center)),
            Padding(
                padding: EdgeInsets.only(top: 10.v, bottom: 12.v),
                child: Text("3", style: theme.textTheme.headlineSmall)),
            Container(
                height: 52.adaptSize,
                width: 52.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.outlineIndigoA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrame20x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.center))
          ]))
    ]);
  }

  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 19.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Common widget
  Widget _buildCheckOut(
    BuildContext context, {
    required String counterText,
  }) {
    return Container(
        width: 160.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text(counterText,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.whiteA700))),
          CustomImageView(
              imagePath: ImageConstant.imgIconlyCurvedCalendarPrimary,
              height: 20.adaptSize,
              width: 20.adaptSize)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    Navigator.pop(context);
  }

  onTapContinue(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChoosePaymentMethodScreen()),
    );
  }
}
