import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';
import 'package:la_noche/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Tickets1ItemWidget extends StatelessWidget {
  Tickets1ItemWidget({
    Key? key,
    this.onTapCancelBookingButton,
    this.onTapViewTicketButton,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCancelBookingButton;

  VoidCallback? onTapViewTicketButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.v,
            width: 332.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 3.v,
                          bottom: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Royale Preside...",
                              style: CustomTextStyles.titleLargeSemiBold,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Text(
                              "Kigali Airport",
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 7.v),
                            CustomElevatedButton(
                              height: 24.v,
                              width: 60.h,
                              text: "Paid",
                              buttonStyle: CustomButtonStyles.fillTeal,
                              buttonTextStyle:
                                  CustomTextStyles.labelMediumCyan300,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "Cancel Booking",
                  margin: EdgeInsets.only(right: 6.h),
                  onPressed: () {
                    onTapCancelBookingButton!.call();
                  },
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 38.v,
                  text: "View Ticket",
                  margin: EdgeInsets.only(left: 6.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                  buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
                  onPressed: () {
                    onTapViewTicketButton!.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
