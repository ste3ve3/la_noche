import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class ChoosepaymentmethodItemWidget extends StatelessWidget {
  const ChoosepaymentmethodItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameLightBlue600,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 2.v,
            ),
            child: Text(
              "Paypal",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastPrimary20x20,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              right: 8.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }
}
