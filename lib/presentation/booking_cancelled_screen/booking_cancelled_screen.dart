import 'package:la_noche/widgets/app_bar/appbar_leading_image.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';
import '../booking_cancelled_screen/widgets/tickets2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/app_bar/appbar_title.dart';
import 'package:la_noche/widgets/app_bar/appbar_trailing_image.dart';
import 'package:la_noche/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class BookingCancelledScreen extends StatelessWidget {
  BookingCancelledScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              _bookNewLoungeButton(context),
              SizedBox(height: 30.v),
              _buildMyBookings(context),
              SizedBox(height: 30.v),
              _buildTickets(context),
            ],
          ),
        ),
      ),
    );
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
              Navigator.pushNamed(context, AppRoutes.bookingNameScreen);
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
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  Widget _buildMyBookings(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Ongoing",
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Completed",
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              "Cancelled",
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTickets(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0.v),
          child: SizedBox(
            width: 340.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray700,
            ),
          ),
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return Tickets2ItemWidget();
      },
    );
  }
}
