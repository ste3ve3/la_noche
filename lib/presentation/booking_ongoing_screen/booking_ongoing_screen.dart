import 'package:la_noche/presentation/booking_cancelled_screen/booking_cancelled_screen.dart';
import 'package:la_noche/presentation/booking_completed_page/booking_completed_page.dart';
import 'package:la_noche/presentation/booking_name_screen/booking_name_screen.dart';
import 'package:la_noche/presentation/refund_method_screen/refund_method_screen.dart';
import 'package:la_noche/presentation/search_page/search_page.dart';
import 'package:la_noche/presentation/view_ticket_screen/view_ticket_screen.dart';
import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

import '../booking_ongoing_screen/widgets/tickets1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class BookingOngoingScreen extends StatelessWidget {
  BookingOngoingScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 29.v),
                child: Column(children: [
                  _bookNewLoungeButton(context),
                  SizedBox(height: 30.v),
                  _buildMyBookings(context),
                  SizedBox(height: 30.v),
                  Expanded(child: _buildTickets(context))
                ]))));
  }

  Stack _bookNewLoungeButton(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: CustomElevatedButton(
            height: 50.v,
            width: 227.v,
            text: "Book New Lounge",
            margin: EdgeInsets.only(left: 6.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL19,
            buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
            leftIcon: Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.add, color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingNameScreen()),
              );
            },
          ),
        ),
      ],
    );
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
            AppbarTitle(text: "My Bookings", margin: EdgeInsets.only(top: 5)),
        actions: [
          AppbarTrailingImage(
            imagePath: ImageConstant.imgRewind,
            margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
            onTap: onTapSearchIcon,
          ),
        ]);
  }

  Widget _buildMyBookings(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 3.v),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingOngoingScreen()),
                      );
                    },
                    child: Text("Ongoing",
                        style: CustomTextStyles.titleMediumSemiBold),
                  )),
              Spacer(flex: 52),
              Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingCompletedPage()),
                      );
                    },
                    child: Text("Completed",
                        style: CustomTextStyles.titleMediumPrimarySemiBold),
                  )),
              Spacer(flex: 47),
              Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingCancelledScreen()),
                      );
                    },
                    child: Text("Cancelled",
                        style: CustomTextStyles.titleMediumPrimarySemiBold),
                  ))
            ]));
  }

  Widget _buildTickets(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.v),
              child: SizedBox(
                  width: 340.h,
                  child: Divider(
                      height: 1.v, thickness: 1.v, color: appTheme.gray700)));
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Tickets1ItemWidget(onTapCancelBookingButton: () {
            onTapCancelBookingButton(context);
          }, onTapViewTicketButton: () {
            onTapViewTicketButton(context);
          });
        });
  }

  onTapCancelBookingButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RefundMethodScreen()),
    );
  }

  /// Navigates to the viewTicketScreen when the action is triggered.
  onTapViewTicketButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewTicketScreen()),
    );
  }

  onTapSearchIcon(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SearchPage()),
    );
  }
}
