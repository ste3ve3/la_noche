import 'package:flutter/material.dart' hide SearchController;
import 'package:la_noche/core/app_export.dart';

// ignore: must_be_immutable
class SearchpagelistItemWidget extends StatelessWidget {
  const SearchpagelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 264.h,
            margin: EdgeInsets.only(bottom: 2.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "President Hotel",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 18.v),
                      Text(
                        "Kigali Airport",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 12.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignalYellowA700,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              "4.8",
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 1.v,
                            ),
                            child: Text(
                              "(4,378 reviews)",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "35",
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
                SizedBox(height: 2.v),
                Text(
                  "/ day",
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
