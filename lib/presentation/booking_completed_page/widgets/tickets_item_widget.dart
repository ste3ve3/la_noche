import 'package:flutter/material.dart';
import 'package:la_noche/core/app_export.dart';
import 'package:la_noche/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TicketsItemWidget extends StatelessWidget {
  const TicketsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 40.h),
            child: Row(
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
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kanombe Resort",
                        style: CustomTextStyles.titleLargeSemiBold,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "Kigali Airport",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 11.v),
                      CustomElevatedButton(
                        height: 24.v,
                        width: 72.h,
                        text: "Completed",
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle: CustomTextStyles.labelMediumCyan300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillGreen.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 5.v,
                  ),
                  child: Text(
                    "Yeay, you have completed it!",
                    style: CustomTextStyles.labelMediumCyan200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
