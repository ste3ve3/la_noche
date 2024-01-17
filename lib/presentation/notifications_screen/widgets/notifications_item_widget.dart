import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  const NotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.blueGray900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: 112.v,
        width: 380.h,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineBlackC.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 12.h,
                  top: 16.v,
                ),
                child: Text(
                  "You have canceled your booking",
                  style: CustomTextStyles.titleSmallGray40001,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupWhiteA700,
                    height: 80.v,
                    width: 83.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 18.v,
                      bottom: 39.v,
                    ),
                    child: Text(
                      "Lounge Booking Canceled",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
